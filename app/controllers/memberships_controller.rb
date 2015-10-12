require "create_membership"

class MembershipsController < ApplicationController
  before_action :token_authenticate_user!, only: [:show]
  after_action :set_cache_control_headers, only: [:new]

  def create
    user = User.where(email: params.fetch(:email)).first_or_create!
    token, kind = params.fetch(:token), params.fetch(:kind)
    CreateMembership.run(membership_params, user, token, kind)
    sign_in(user)

    render json: {result: "success", url: redirect_url(kind) }
  rescue CreateMembership::Error => e
    user.destroy if user.persisted?
    render_failure
  rescue => e
    Rollbar.error(e)
    render_failure
  end

  def show
    # only set intercom user on this uncached page
    @intercom = Intercom.settings(current_user)
    get_membership
  end

  def update
    user_params = params.require(:user).permit(:email)
    current_user.update!(user_params)
    current_user.membership.update!(membership_params)
    FastlyRails.purge_by_key("members")

    redirect_to membership_path
  rescue ActiveRecord::RecordInvalid
    get_membership
    render :edit
  end

  def destroy
    customer = Stripe::Customer.retrieve(current_user.stripe_id)
    subscription = customer.subscriptions.all.first
    subscription.delete if subscription
    current_user.membership.update expires_at: Time.now
    redirect_to membership_path
  end

  def card
    card = customer.replace_card(params.fetch(:token))
    current_user.membership.update!(
      card_brand: card.brand,
      card_last4: card.last4
    )

    render json: {
      result: "success",
      message: "Your card on file has been updated.",
      replace: {
        selector: ".card-info",
        text: "#{card.brand} ending in #{card.last4}"
      }
    }
  rescue => e
    Rollbar.error(e)
    render_failure
  end

private

  def success_for(kind)
    kind = "member" unless (kind == "friend")
    "Success! You are now a #{kind} of Ruby Together. " \
      "We've sent you a welcome email with more information."
  end

  def render_failure
    contact_us = self.class.helpers.contact_us
    error = "There was an error while charging your card. It " \
      "might work if you try again, or you can #{contact_us} for help."
    render json: {result: "failure", message: error}
  end

  def token_authenticate_user!
    user = User.with_reset_password_token(params[:token]) if params.has_key?(:token)
    sign_in(user) if user

    return authenticate_user!
  end

  def get_membership
    @membership = current_user.membership
    redirect_to root_path(anchor: "join") unless @membership
  end

  def membership_params
    return {} unless params.has_key?(:membership)

    params.require(:membership).permit(:name, :url, :twitter, :description,
      :logo_url, :contact_name, :contact_phone, :contact_email).merge(expires_at: 1.month.from_now.iso8601)
  end

  def redirect_url(kind)
    case kind
    when "friend"
      thanks_friend_path
    else
      thanks_member_path
    end
  end

  def customer
    Customer.for_user(current_user)
  end

end
