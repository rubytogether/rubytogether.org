require 'rails_helper'
require 'webmock/rspec'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/vcr'
  c.hook_into :webmock
  c.configure_rspec_metadata!

  # This allows VCR to save responses, adding them to existing saved responses.
  # Only enable it when e.g. there are new plan types causing new requests.
  # c.default_cassette_options = { :record => :new_episodes }
end

RSpec.configure do |config|
  when_tagged_with_vcr = { :vcr => lambda { |v| !!v } }

  config.before(:each, when_tagged_with_vcr) do |ex|
    WebMock.enable!
  end

  config.after(:each, when_tagged_with_vcr) do |ex|
    WebMock.disable!
  end
end

# Stripe gem checks SSL cert with TCP, which VCR doesn't support.
# That produces the error getaddrinfo: nodename nor servname provided, or not known (SocketError)
# See https://github.com/vcr/vcr/issues/402 for more info
# This code block (taken from above) monkeypatches over the method that does the TCP connection
require 'stripe' # to preload the gem so we can override it
module Stripe
  module CertificateBlacklist
    def self.check_ssl_cert(uri, ca_file)
      true
    end
  end
end
