MembershipPlan = Struct.new(:id, :name, :interval, :amount, :currency) do
  class << self
    attr_accessor :all
  end

  def self.[](name)
    all[name]
  end

  def self.subscriber_counts
    all.map do |name, plan|
      [name, plan.subscriber_count]
    end.to_h
  end

  def subscriber_count
    Stripe::Customer.all(
      "include[]"=>"total_count",
      "limit" => "1",
      "subscription[plan]" => id
    ).total_count
  end

end

MembershipPlan.all = {
  friend: MembershipPlan.new(
    'friend',
    'Friends of Ruby Together',
    'month',
    1000,
    'usd'
  ),

  individual: MembershipPlan.new(
    'individual',
    'Individual Membership',
    'month',
    4000,
    'usd'
  ),

  corporate: MembershipPlan.new(
    'corporate',
    'Corporate Membership',
    'month',
    80000,
    'usd'
  )
}

