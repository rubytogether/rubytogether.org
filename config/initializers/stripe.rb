Rails.configuration.x.tap do |c|
  c.stripe_publishable_key = ENV.fetch("STRIPE_PUBLIC_KEY")
  c.stripe_secret_key = ENV.fetch("STRIPE_SECRET_KEY")
end

Stripe.api_key = Rails.configuration.x.stripe_secret_key

# Override Stripe API version to allow testing upgrades
if ENV.has_key?("STRIPE_API_VERSION")
  Stripe.api_version = ENV.fetch("STRIPE_API_VERSION")
end

# Enable HTTP basic auth if secret is set (for prod but not staging)
if ENV.has_key?("STRIPE_WEBHOOK_SECRET")
  StripeEvent.authentication_secret = ENV.fetch("STRIPE_WEBHOOK_SECRET")
end

require "membership_plan"
require "stripe_event/customer/source/created"
require "stripe_event/invoice/payment_succeeded"
require "stripe_event/invoice/payment_failed"
require "stripe_event/subscription/changed"
require "stripe_event/subscription/deleted"

StripeEvent.configure do |events|
  events.subscribe "invoice.payment_succeeded",
    StripeEvent::Invoice::PaymentSucceeded.new

  events.subscribe "invoice.payment_failed",
    StripeEvent::Invoice::PaymentFailed.new

  events.subscribe "customer.source.created",
    StripeEvent::Customer::Source::Created.new

  events.subscribe "customer.subscription.created",
    StripeEvent::Subscription::Changed.new

  events.subscribe "customer.subscription.deleted",
    StripeEvent::Subscription::Deleted.new
end
