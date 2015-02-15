require 'create_membership'

class MembershipsController < ApplicationController

  def new
  end

  def create
    token = params.fetch(:token)
    CreateMembership.new(token).run
    flash.notice = "Success! Thanks for joining Ruby Together."
    render plain: membership_url, status: :created
  rescue CreateMembership::Error => e
    flash.alert = "Unfortunately, there was an error while charging your card."
    render plain: join_url, status: :unprocessable_entity
  end

  def show
  end

end
