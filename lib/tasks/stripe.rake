namespace :stripe do
  desc "Send plans to Stripe"
  task :plans do
    require_relative "../../config/initializers/stripe"
    current_ids = Stripe::Plan.all.map(&:id)

    all_plans = MembershipPlan.all.values
    all_plans.each do |plan|
      if current_ids.include?(plan.id)
        puts "Plan #{plan.id} (#{plan.name}) already exists."
      else
        puts "Creating plan #{plan.id} (#{plan.name})..."
        Stripe::Plan.create(plan.to_stripe)
      end
    end
  end
end
