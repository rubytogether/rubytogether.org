require "create_charge"

class ChargesController < ApplicationController

  def create
    token = params.fetch(:token)
    amount = params.fetch(:amount).to_i
    email = params.fetch(:email)
    CreateCharge.run(token, amount, email)
    render_success
  rescue CreateCharge::Error => e
    render_failure(e.message)
  rescue => e
    Rollbar.error(e)
    render_failure
  end

private

  def render_success
    render json: {result: "success", url: thanks_member_path}
  end

  def render_failure(message = nil)
    contact_us = self.class.helpers.contact_us
    message ||= "There was an error while charging your card. It " \
      "might work if you try again, or you can #{contact_us} for help."
    render json: {result: "failure", message: message}
  end

end
