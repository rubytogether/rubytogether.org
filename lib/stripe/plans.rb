MembershipPlan = Struct.new(:name, :amount, :interval, :id) do
  class << self
    attr_accessor :all

    def [](name)
      all[name]
    end
  end
end

MembershipPlan.all = {
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

