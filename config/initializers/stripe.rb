Rails.configuration.stripe = {
  :public_key => ENV.fetch("STRIPE_PUBLIC_KEY"),
  :secret_key => ENV.fetch("STRIPE_SECRET_KEY")
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]