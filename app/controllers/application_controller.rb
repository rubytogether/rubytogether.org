class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Provides valid CSRF tokens for cached forms
  def csrf
    render json: {
      param: request_forgery_protection_token,
      token: form_authenticity_token
    }
  end

private

  # Used by Devise to redirect after login
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || membership_path
  end

end
