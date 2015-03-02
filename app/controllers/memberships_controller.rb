require "create_membership"

class MembershipsController < ApplicationController
  before_action :authenticate_member!, except: [:create, :metadata]

  def metadata
    render json: {
      param: request_forgery_protection_token,
      token: form_authenticity_token,
      url: membership_path,
      stripe_key: Rails.configuration.stripe.publishable_key
    }
  end

  def create
    user = User.where(email: params.fetch(:email)).first_or_create!
    CreateMembership.run(user, params.fetch(:token), params.fetch(:kind))

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
    current_user.update!(email: params[:user][:email])
    current_user.membership.update!(name: params[:membership][:name])
    redirect_to membership_path
  rescue ActiveRecord::RecordInvalid
    get_membership
    render :edit
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

end
