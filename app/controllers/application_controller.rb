class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def csrf
    render json: {
      param: request_forgery_protection_token,
      token: form_authenticity_token
    }
  end

end
