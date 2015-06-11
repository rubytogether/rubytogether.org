MembershipPlan = Struct.new(:id, :shortname, :name, :interval, :amount, :currency) do
  class << self
    attr_accessor :all
  end

  def self.[](name)
    all[name]
  end

  def self.ids
    MembershipPlan::INFO.keys
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
  individual: {name: 'Personal Member', amount: 4000, shortname: 'personal'},
  corporate: {name: 'Emerald Member', amount: 80000, shortname: 'Emerald'},
  friend: {name: 'Friend of Ruby Together', amount: 1000, shortname: 'friend'},
  corporate_topaz: {name: 'Topaz Member', amount: 20000, shortname: 'Topaz'},
  corporate_sapphire: {name: 'Sapphire Member', amount: 200000, shortname: 'Sapphire'},
  corporate_ruby: {name: 'Ruby Member', amount: 500000, shortname: 'Ruby'}
}

MembershipPlan.all = Hash[MembershipPlan::INFO.map do |id, info|
  [id, MembershipPlan.new(
    id.to_s,
    info.fetch(:shortname),
    info.fetch(:name),
    info.fetch(:interval, 'month'),
    info.fetch(:amount),
    'usd'
  )]
end]
