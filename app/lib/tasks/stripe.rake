namespace :stripe do
  desc "Send plans to Stripe"
  task :plans do
    require_relative "../../config/initializers/stripe"
    products = Stripe::Product.all
    plans = Stripe::Plan.all

    all_plans = MembershipPlan.all.values
    all_plans.each do |plan|
      product = products.find{|p| p.name == plan.name }

      if product
        puts "Product #{plan.name} already exists."
      else
        product = Stripe::Product.create(name: plan.name, type: "service")
      end

      if plans.map(&:id).include?(plan.id)
        puts "Plan #{plan.id} (#{plan.name}) already exists."
      else
        puts "Creating plan #{plan.id} (#{plan.name})..."
        Stripe::Plan.create(plan.to_stripe.merge(product: product.id))
      end
    end
  end
end
