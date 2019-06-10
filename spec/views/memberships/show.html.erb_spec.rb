require "rails_helper"

RSpec.describe "memberships/show", type: :view do
  let(:user) { User.new(email: "alice@example.com") }
  let(:membership) { Membership.new(level: "corporate_emerald", user: user, interval: "year") }
  before { assign(:membership, membership) }

  it "renders active memberships" do
    membership.expires_at = 10.days.from_now
    render
  end

  it "renders active memberships with credit cards" do
    membership.expires_at = 10.days.from_now
    membership.card_last4 = "1234"
    expect(render).to match(/a yearly payment of \$6,000/i)
  end

  it "renders expired memberships" do
    membership.expires_at = 10.days.ago
    render
  end

end
