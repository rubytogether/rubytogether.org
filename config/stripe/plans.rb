# Define Stripe subscription plans here
#
# Access plans in code as constants:
#   Stripe::Plans::PRIMO #=> 'primo'
#
# Upload plans to Stripe by running:
#   rake stripe:prepare

Stripe.plan :individual do |plan|
  plan.name = 'Ruby Together Individual Membership'
  plan.amount = 4000 # $40.00 USD
  plan.interval = 'month'
end

Stripe.plan :corporate do |plan|
  plan.name = 'Ruby Together Corporate Membership'
  plan.amount = 80000 # $800.00 USD
  plan.interval = 'month'
end