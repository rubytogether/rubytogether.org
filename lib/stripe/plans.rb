MembershipPlan = Struct.new(:name, :amount, :interval, :id) do
  class << self
    attr_accessor :all

    def [](name)
      all[name]
    end
  end
end

MembershipPlan.all = {
  friend: MembershipPlan.new(
    'Friends of Ruby Together',
    1000,
    'month',
    'friend'
  ),

  individual: MembershipPlan.new(
    'Individual Membership',
    4000,
    'month',
    'individual'
  ),

  corporate: MembershipPlan.new(
    'Corporate Membership',
    80000,
    'month',
    'corporate'
  )
}

