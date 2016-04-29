require 'uri'

app_url = if ENV.has_key?("HEROKU_APP_NAME")
  "https://" + ENV["HEROKU_APP_NAME"] + ".herokuapp.com"
else
  ENV.fetch("DEFAULT_URL")
end

uri = URI.parse app_url

defaults = {
  host: uri.host,
  protocol: uri.scheme
}

unless uri.port == 80 || uri.port == 443
  defaults.merge!(port: uri.port)
end

Rails.application.config.action_mailer.default_url_options = defaults

# Apparently mailer previews require this setting on the routes?
# http://stackoverflow.com/a/24796162/231026
Rails.application.routes.default_url_options = defaults
