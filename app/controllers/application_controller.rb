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

  # Lograge method for adding extra info to Logging
  def append_info_to_payload(payload)
    super
    payload[:remote_ip] = request.remote_ip
    payload[:user_id] = current_user.try(:id) || 0
  end

private

  # Used by Devise to redirect after login
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || membership_path
  end

  # Checking for `warden` allows this to work in tests, etc.
  def current_user
    return nil if warden.nil?
    @current_user ||= warden.authenticate(scope: :user)
  end

  # imported from ye olde fastly-rails, now abandoned

  # Sets Cache-Control and Surrogate-Control HTTP headers
  # Surrogate-Control is stripped at the cache, Cache-Control persists (in case of other caches in front of fastly)
  # Defaults are:
  #  Cache-Control: 'public, no-cache'
  #  Surrogate-Control: 'max-age: 30 days
  # custom config example:
  #  {cache_control: 'public, no-cache, maxage=xyz', surrogate_control: 'max-age: blah'}
  def set_cache_control_headers(max_age = 30.days, opts = {})
    request.session_options[:skip] = true    # no cookies
    response.headers['Cache-Control'] = opts[:cache_control] || "public, no-cache"
    response.headers['Surrogate-Control'] = opts[:surrogate_control] || build_surrogate_control(max_age, opts)
  end

  def build_surrogate_control(max_age, opts)
    surrogate_control = "max-age=#{max_age}"
    stale_while_revalidate = opts[:stale_while_revalidate]
    stale_if_error = opts[:stale_if_error]

    surrogate_control += ", stale-while-revalidate=#{stale_while_revalidate}" if stale_while_revalidate
    surrogate_control += ", stale-if-error=#{stale_if_error}" if stale_if_error
    surrogate_control
  end

  # Sets Surrogate-Key HTTP header with one or more keys
  # strips session data from the request
  def set_surrogate_key_header(*surrogate_keys)
    request.session_options[:skip] = true  # No Set-Cookie
    response.headers['Surrogate-Key'] = surrogate_keys.join(' ')
  end

end
