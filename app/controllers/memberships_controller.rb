require 'create_membership'

class MembershipsController < ApplicationController

  def new
  end

  def create
    token = params.fetch(:token)
    CreateMembership.new(token).run
    flash.notice = "Success! Thanks for joining Ruby Together."
    render json: {result: "success", url: join_url}
  rescue CreateMembership::Error => e
    contact_us = self.class.helpers.contact_link("contact us")
    error = "We ran into an error while trying to charge your card. It " \
      "might work if you try again, or you can #{contact_us} for help."
    render json: {result: "failure", message: error}
  end

  def show
  end

end
