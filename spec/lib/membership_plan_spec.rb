require "spec_helper"
require "membership_plan"

RSpec.describe MembershipPlan do
  it "includes all plans in .ids" do
    expect(MembershipPlan.ids.sort).to eq(MembershipPlan::INFO.keys.sort)
  end

  it "includes all plans in developer, featured, and non-featured ids" do
    scopes = MembershipPlan.developer_ids + MembershipPlan.featured_ids +
      MembershipPlan.nonfeatured_ids
    expect(scopes.sort).to eq(MembershipPlan::INFO.keys.sort)
  end
end
