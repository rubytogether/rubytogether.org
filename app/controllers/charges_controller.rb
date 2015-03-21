require "create_charge"

class ChargesController < ApplicationController

  def create
    token, amount = params.fetch(:token), params.fetch(:amount).to_i
    CreateCharge.new.run(token, amount)

    render json: {result: "success", message: success}
  rescue CreateCharge::Error => e
    user.destroy if user.persisted?
    render_failure
  rescue => e
    Rollbar.error(e)
    render_failure
  end

private

  def success
    "Success! Thanks for contributing to Ruby Together. " \
      "We'll send you an email with a receipt."
  end

  def render_failure
    contact_us = self.class.helpers.contact_us
    error = "There was an error while charging your card. It " \
      "might work if you try again, or you can #{contact_us} for help."
    render json: {result: "failure", message: error}
  end

end
