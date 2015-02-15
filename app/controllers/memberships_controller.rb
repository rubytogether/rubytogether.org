require 'create_membership'

class MembershipsController < ApplicationController

  def new
  end

  def create
    token = params.fetch(:token)
    CreateMembership.new(token).run
    flash.notice = "Success! Thanks for joining Ruby Together."
    render json: {result: "success", url: membership_url}
  rescue CreateMembership::Error => e
    flash.alert = "Unfortunately, there was an error while charging your card."
    render json: {result: "failure", url: join_url}
  end

  def show
  end

end
