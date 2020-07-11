require_relative "boot"

require "rails"

# load railties excluding action_cable
%w(
  action_controller/railtie
  action_mailer/railtie
  action_view/railtie
  active_job/railtie
  active_record/railtie
  active_storage/engine
  rails/test_unit/railtie
  sprockets/railtie
).each do |railtie|
  begin
    require railtie
  rescue LoadError
  end
end

# Print deprication backtraces when DEBUG is set
ActiveSupport::Deprecation.debug = true if ENV["DEBUG"]

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RubyTogether
  class Application < Rails::Application
    # Ensuring that ActiveStorage routes are loaded before Comfy's globbing
    # route. Without this file serving routes are inaccessible.
    config.railties_order = [ActiveStorage::Engine, :main_app, :all]

    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.eager_load_paths += %W(#{config.root}/lib)
  end
end
