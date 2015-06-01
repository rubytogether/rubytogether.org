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

MembershipPlan::INFO = {
  friend: {name: 'Friend of Ruby Together', amount: 1000},
  individual: {name: 'Personal Member', amount: 4000},
  corporate_topaz: {name: 'Topaz Member', amount: 20000},
  corporate: {name: 'Emerald Member', amount: 80000},
  corporate_sapphire: {name: 'Sapphire Member', amount: 200000},
  corporate_ruby: {name: 'Ruby Member', amount: 500000}
}

MembershipPlan.all = Hash[MembershipPlan::INFO.map do |id, info|
  [id, MembershipPlan.new(
    id.to_s,
    info.fetch(:name),
    info.fetch(:interval, 'month'),
    info.fetch(:amount),
    'usd'
  )]
end]
