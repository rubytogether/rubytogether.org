require "spec_helper"
require "membership_product"

RSpec.describe MembershipProduct do
  let(:ids) { PRODUCT_MAP.keys }

  it "includes all plans in .ids" do
    expect(MembershipProduct.sorted_ids).to match_array(ids)
  end

  it "includes all plans in developer, featured, and non-featured ids" do
    plans = MembershipProduct.developer_ids
    plans += MembershipProduct.featured_ids
    plans += MembershipProduct.nonfeatured_ids
    expect(plans).to match_array(ids)
  end
end
