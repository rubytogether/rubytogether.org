require 'uri'

if ENV.has_key?("HEROKU_APP_NAME")
  app_url = "https://" + ENV["HEROKU_APP_NAME"] + ".herokuapp.com"
end

# Detect puma-dev setup running in a console
if File.exist? File.expand_path("~/.puma-dev/rubytogether")
  app_url = "https://rubytogether.test"
end

app_url ||= ENV.fetch("DEFAULT_URL")

uri = URI.parse app_url

defaults = {
  host: uri.host,
  protocol: uri.scheme
}

unless uri.port == 80 || uri.port == 443
  defaults.merge!(port: uri.port)
end

# Apparently mailer previews require this setting on the routes?
# http://stackoverflow.com/a/24796162/231026
Rails.application.routes.default_url_options = defaults

Rails.application.config.action_mailer.default_url_options = defaults
Rails.application.config.action_mailer.asset_host = app_url
