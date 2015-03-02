require 'uri'

uri = URI.parse ENV.fetch('DEFAULT_URL')
defaults = {
  host: uri.host,
  port: uri.port
}

Rails.application.config.action_mailer.default_url_options = defaults

# Apparently mailer previews require this setting on the routes?
# http://stackoverflow.com/a/24796162/231026
Rails.application.routes.default_url_options = defaults
