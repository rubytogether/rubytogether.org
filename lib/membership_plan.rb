MembershipPlan = Struct.new(:id, :shortname, :name, :interval, :amount, :currency) do
  class << self
    attr_accessor :all
  end

  def self.[](name)
    all[name]
  end

  def self.ids
    # Postgres enums can't be re-ordered, so we order the plan list here
    [:individual, :corporate_emerald, :friend, :corporate_topaz, :corporate_sapphire,
      :corporate_ruby, :corporate_jade, :corporate_onyx]
  end

  def self.company_ids
    featured_ids + nonfeatured_ids
  end

  def self.featured_ids
    [:corporate_emerald, :corporate_sapphire, :corporate_ruby]
  end

  def self.nonfeatured_ids
    [:corporate_topaz, :corporate_jade, :corporate_onyx]
  end

  def self.subscriber_counts
    all.map do |id, plan|
      [plan, plan.subscriber_count]
    end.to_h
  end

  def subscriber_count
    Stripe::Subscription.list(
      "include[]" => "total_count",
      "limit" => 1,
      "plan" => id,
      "status" => "active"
    ).total_count
  end

  def to_stripe
    to_h.slice(:id, :name, :interval, :amount, :currency)
  end
end

MembershipPlan::INFO = {
  corporate_onyx: {name: 'Onyx Member', amount: 5000, shortname: 'Onyx'},
  corporate_emerald: {name: 'Emerald Member', amount: 80000, shortname: 'Emerald'},
  corporate_jade: {name: 'Jade Member', amount: 10000, shortname: 'Jade'},
  corporate_ruby: {name: 'Ruby Member', amount: 500000, shortname: 'Ruby'},
  corporate_sapphire: {name: 'Sapphire Member', amount: 200000, shortname: 'Sapphire'},
  corporate_topaz: {name: 'Topaz Member', amount: 20000, shortname: 'Topaz'},
  friend: {name: 'Friend of Ruby Together', amount: 1000, shortname: 'friend'},
  individual: {name: 'Developer Member', amount: 4000, shortname: 'personal'}
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
