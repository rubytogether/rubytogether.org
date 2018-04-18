# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
# Add additional requires below this line. Rails is not loaded until this point!

# Requires supporting ruby files with custom matchers and macros, etc, in
# spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
# run as spec files by default. This means that files in spec/support that end
# in _spec.rb will both be required and run as specs, causing the specs to be
# run twice. It is recommended that you do not name files matching this glob to
# end with _spec.rb. You can configure this pattern with the --pattern
# option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
#
# The following line is provided for convenience purposes. It has the downside
# of increasing the boot-up time by auto-requiring all files in the support
# directory. Alternatively, in the individual `*_spec.rb` files, manually
# require only the support files necessary.
#
# Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!

# StripeEvent raises an error if this is nil, so ¯\_(ツ)_/¯
StripeEvent.signing_secret = "blah blah blah"

# ActiveJob doesn't let you test it in tests by default
ActiveJob::Base.queue_adapter = :test

module StripeEventHelpers
  def post_stripe_event(name)
    # Route around Stripe webhook signature verification
    expect(Stripe::Webhook).to receive(:construct_event) do |payload|
      Stripe::Event.construct_from(JSON.parse(payload, symbolize_names: true))
    end

    # Post the named event payload as JSON to the webhook endpoint
    payload = Rails.root.join("spec/fixtures/stripe_events", "#{name}.json").read
    post "/stripe/events", params: payload, headers: {"CONTENT_TYPE" => "application/json"}
  end
end

RSpec.configure do |config|
  config.use_transactional_fixtures = true

  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include StripeEventHelpers, type: :request
  config.include ActiveJob::TestHelper, type: :request
end
