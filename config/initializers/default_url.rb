require 'uri'

uri = URI.parse ENV.fetch('DEFAULT_URL') 

Rails.application.config.action_mailer.default_url_options = {
  host: uri.host,
  port: uri.port
}
