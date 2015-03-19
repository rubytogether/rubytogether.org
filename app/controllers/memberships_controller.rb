require "create_membership"

class MembershipsController < ApplicationController
  before_action :authenticate_member!, except: [:new, :create]
  after_action :set_cache_control_headers, only: [:new]

  def new
    @membership = Membership.new(user: User.new)
  end

  def create
    user = User.where(email: params.fetch(:email)).first_or_create!
    token, kind = params.fetch(:token), params.fetch(:kind)
    CreateMembership.run(membership_params, user, token, kind)

    notice = "Success! You are now a member of Ruby Together. " \
      "We've sent you a welcome email with more information."
    render json: {result: "success", message: notice}
  rescue CreateMembership::Error => e
    user.destroy if user.persisted?
    render_failure
  rescue => e
    Rollbar.error(e)
    render_failure
  end

  def show
    get_membership
  end

  def edit
    get_membership
  end

  def update
    if params.has_key?(:user)
      current_user.update!(email: params[:user].fetch(:email))
    end

    if params.has_key?(:membership)
      current_user.membership.update!(name: params[:membership].fetch(:name))
      FastlyRails.purge_by_key("members")
    end

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
    customer = Stripe::Customer.retrieve(current_user.stripe_id)
    old_default = customer.default_source
    cards = customer.sources

    card = cards.create(card: params.fetch(:token))
    cards.retrieve(old_default).delete if old_default

    notice = "Your card on file has been updated."
    render json: {result: "success", message: notice}
  rescue => e
    Rollbar.error(e)
    render_failure
  end

private

  def render_failure
    contact_us = self.class.helpers.contact_us
    error = "There was an error while charging your card. It " \
      "might work if you try again, or you can #{contact_us} for help."
    render json: {result: "failure", message: error}
  end

  def authenticate_member!
    user = User.with_reset_password_token(params[:token]) if params.has_key?(:token)
    sign_in(user) if user

    return authenticate_user!
  end

  def get_membership
    @membership = current_user.membership
    redirect_to join_path unless @membership
  end

  def membership_params
    return {} unless params.has_key?(:membership)

    params.require(:membership).permit(:name, :url, :twitter, :description,
      :logo_url, :contact_name, :contact_phone, :contact_email).merge(expires_at: 1.month.from_now.iso8601)
  end

end
