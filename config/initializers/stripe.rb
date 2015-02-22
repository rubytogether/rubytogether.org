Rails.configuration.stripe.tap do |s|
  s.publishable_key = ENV.fetch("STRIPE_PUBLIC_KEY")
  s.secret_key = ENV.fetch("STRIPE_SECRET_KEY")
end
