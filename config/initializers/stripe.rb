Rails.configuration.stripe.tap do |s|
  s.publishable_key = ENV.fetch("STRIPE_PUBLIC_KEY")
  s.secret_key = ENV.fetch("STRIPE_SECRET_KEY")
end

Stripe.api_key = Rails.configuration.stripe.secret_key

# Enable HTTP basic auth if secret is set (for prod but not staging)
if ENV.has_key?("STRIPE_WEBHOOK_SECRET")
  StripeEvent.authentication_secret = ENV.fetch("STRIPE_WEBHOOK_SECRET")
end

require 'stripe/invoice/payment_succeeded'