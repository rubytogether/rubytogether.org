Rails.configuration.x.tap do |c|
  c.stripe_publishable_key = ENV.fetch("STRIPE_PUBLIC_KEY")
  c.stripe_secret_key = ENV.fetch("STRIPE_SECRET_KEY")
end

Stripe.api_key = Rails.configuration.x.stripe_secret_key

# Enable HTTP basic auth if secret is set (for prod but not staging)
if ENV.has_key?("STRIPE_WEBHOOK_SECRET")
  StripeEvent.authentication_secret = ENV.fetch("STRIPE_WEBHOOK_SECRET")
end

require 'stripe/plans'
require 'stripe/invoice/payment_succeeded'

StripeEvent.configure do |events|
  events.subscribe 'invoice.payment_succeeded',
    Stripe::Invoice::PaymentSucceeded.new(Rails.logger)
end
