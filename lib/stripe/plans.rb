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
    'Ruby Together Individual Membership',
    4000,
    'month',
    'individual'
  ),

  corporate: MembershipPlan.new(
    'Ruby Together Corporate Membership',
    80000,
    'month',
    'corporate'
  )
}

