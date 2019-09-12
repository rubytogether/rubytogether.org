MembershipPlan = Struct.new(:product_id, :interval, :amount) do
  PLAN_INFO = {
    developer_small: 10_00,
    developer_medium: 50_00,
    developer_large: 100_00,
    corporate_emerald: 500_00,
    corporate_sapphire: 2000_00,
    corporate_ruby: 5000_00,
  }

  PLAN_MAP = PLAN_INFO.inject({}) do |plans, (id, amount)|
    plans[id] = [
      new(id, :month, amount),
      new(id, :year, amount * 12)
    ]

    plans
  end

  def self.all
    PLAN_MAP.values.flatten
  end

  def self.monthly(id)
    PLAN_MAP.fetch(id.to_sym).find{|plan| plan.interval == :month }
  end

  def self.yearly(id)
    PLAN_MAP.fetch(id.to_sym).find{|plan| plan.interval == :year }
  end

  def corporate?
    product_id.to_s.start_with?("corporate")
  end

  def dollar_amount
    amount / 100
  end

  def product
    MembershipProduct[product_id]
  end

  def name
    "#{product.name.gsub(/ \(.*\)/, '')}"
  end

  def nickname
    "#{product.name} #{interval.capitalize}ly"
  end

  def self.stripe_plans
    @stripe_plans ||= Stripe::Plan.list.auto_paging_each.to_a
  end

  def self.reload_stripe_plans!
    @stripe_plans = nil
    stripe_plans
  end

  def self.stripe_plan(product_id, amount)
    stripe_plans.find do |sp|
      sp.product == product_id && sp.amount == amount
    end
  end

  def stripe_plan
    self.class.stripe_plan(product.stripe_id, amount) ||
      raise("Could not find stripe plan for #{self.inspect}!")
  end

  def stripe_id
    stripe_plan.id
  end

end
