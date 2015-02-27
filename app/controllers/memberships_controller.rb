require "create_membership"

class MembershipsController < ApplicationController

  def create
    user = User.where(email: params.fetch(:email)).first_or_create!
    plan = plan_for(params.fetch(:kind))

    CreateMembership.run(user, params.fetch(:token), plan)

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
    sign_in(User.first)
    @membership = current_user.membership
    redirect_to join_path unless @membership
  end

private

  def plan_for(kind)
    case kind
    when "individual"
      Stripe::Plans::INDIVIDUAL
    when "corporate"
      Stripe::Plans::CORPORATE
    else
      raise Error, "unknown membership kind #{kind.inspect}"
    end
  end

  def render_failure
    contact_us = self.class.helpers.contact_us
    error = "There was an error while charging your card. It " \
      "might work if you try again, or you can #{contact_us} for help."
    render json: {result: "failure", message: error}
  end

end
