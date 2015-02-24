require 'create_membership'

class MembershipsController < ApplicationController

  def create
    user = User.where(email: params.fetch(:email)).first_or_create!
    plan = plan_for(params.fetch(:type))

    CreateMembership.run(user, params.fetch(:token), plan)

    notice = "Success! You are now a member of Ruby Together. " \
      "We've sent you a welcome email with more information."
    render json: {result: "success", message: notice}
  rescue CreateMembership::Error => e
    user.destroy if user.stripe_id.nil?

    contact_us = self.class.helpers.contact_us
    error = "We ran into an error while trying to charge your card. It " \
      "might work if you try again, or you can #{contact_us} for help."
    render json: {result: "failure", message: error}
  end

  def show
  end

private

  def plan_for(type)
    case type
    when "individual"
      Stripe::Plans::INDIVIDUAL
    when "corporate"
      Stripe::Plans::CORPORATE
    else
      raise Error, "unknown membership type #{type.inspect}"
    end
  end

end
