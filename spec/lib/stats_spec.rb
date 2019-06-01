require "vcr_helper"

RSpec.describe Stats, :vcr do

  let!(:member_one) do
    stripe = Stripe::Customer.retrieve("cus_8ff9tXc0ra8927")
    Membership.create name: "Jane Doe", expires_at: 3.days.from_now,
      level: :individual_small,
      user: User.create(stripe_id: stripe.id, email: "jane@example.org")
  end
  let!(:member_two) do
    stripe = Stripe::Customer.retrieve("cus_8ff9KmLm6ZG9oW")
    Membership.create name: "Alice Re", expires_at: 3.weeks.from_now,
      level: :developer_large,
      user: User.create(stripe_id: stripe.id, email: "alice@example.org")
  end
  let!(:member_three) do
    stripe = Stripe::Customer.retrieve("cus_8ff95K9mtLvC4w")
    Membership.create name: "Bob Mi", expires_at: 26.days.from_now,
      level: :corporate_sapphire,
      user: User.create(stripe_id: stripe.id, email: "bob@example.org")
  end
  let!(:expired_member) do
    stripe = Stripe::Customer.retrieve("cus_8ffUbWEM9gofdR")
    Membership.create name: "Expired Fa", expires_at: 4.days.ago,
      level: :corporate_emerald,
      user: User.create(stripe_id: stripe.id, email: "expired@example.org")
  end

  subject { Stats } # otherwise it is an instance

  context "since" do
    it "is accurate" do
      response = subject.since(4.weeks.ago)
      expect(response).to be_present
      expect(response).to include("1 new person") # $40/month
      expect(response).to include("2 new companies") # Ruby $5,000 + Onyx $50
      expect(response).to include("3 new members total") # Total $5,090
      expect(response).to include("2 companies (1 Ruby, 1 Onyx)")
      expect(response).to include("1 developer (1 personal)")
    end
  end

end
