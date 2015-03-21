MembershipPlan = Struct.new(:id, :name, :interval, :amount, :currency) do
  class << self
    attr_accessor :all

    def [](name)
      all[name]
    end
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

