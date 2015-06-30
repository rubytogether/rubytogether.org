Rails.configuration.x.tap do |c|
  c.stripe_publishable_key = ENV.fetch("STRIPE_PUBLIC_KEY")
  c.stripe_secret_key = ENV.fetch("STRIPE_SECRET_KEY")
end

Stripe.api_key = Rails.configuration.x.stripe_secret_key

# Enable HTTP basic auth if secret is set (for prod but not staging)
if ENV.has_key?("STRIPE_WEBHOOK_SECRET")
  StripeEvent.authentication_secret = ENV.fetch("STRIPE_WEBHOOK_SECRET")
end

require 'membership_plan'
require 'stripe/invoice/payment_succeeded'

StripeEvent.configure do |events|

  events.subscribe 'invoice.payment_succeeded',
    Stripe::Invoice::PaymentSucceeded.new

  events.subscribe 'customer.source.created' do |event|
    card = event.data.object
    user_id = User.where(stripe_id: card.customer).pluck(:id).first
    membership = Membership.where(user_id: user_id).first!
    membership.update!(card_brand: card.brand, card_last4: card.last4)
  end

  events.subscribe 'customer.subscription.created',
    Stripe::Subscription::Changed.new

  events.subscribe 'customer.subscription.deleted',
    Stripe::Subscription::Changed.new

end
