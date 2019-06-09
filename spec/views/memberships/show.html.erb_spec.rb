require "rails_helper"

RSpec.describe "memberships/show", type: :view do
  let(:membership) { Membership.new(level: "corporate_emerald") }
  before { assign(:membership, membership) }

  it "renders active memberships" do
    membership.expires_at = 10.days.from_now
    render
  end

  it "renders expired memberships" do
    membership.expires_at = 10.days.ago
    render
  end
end
