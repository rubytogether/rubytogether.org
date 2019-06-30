# == Schema Information
#
# Table name: memberships
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  name          :string
#  description   :string
#  kind          :integer          default(0)
#  expires_at    :datetime
#  card_brand    :string
#  card_last4    :string
#  url           :string
#  twitter       :string
#  contact_name  :string
#  contact_phone :string
#  logo_url      :string
#  contact_email :string
#  created_at    :datetime
#  updated_at    :datetime
#  cancelled_at  :datetime
#  level         :string
#  interval      :string           default("month")
#

require 'rails_helper'

RSpec.describe Membership, type: :model do
  let(:membership) { Membership.new }

  describe "normalize_url" do
    it "prepends http:// if missing" do
      membership.url = "www.example.com"
      membership.send(:normalize_url)
      expect(membership.url).to eq("http://www.example.com")
    end
  end

  describe "has_stripe_subscription?" do
    before { membership.user = User.new }

    it "is true when the stripe subscriptions are not empty" do
      allow(membership.user).to receive(:stripe_customer) {
        double(subscriptions: [Object.new])
      }
      expect(membership.has_stripe_subscriptions?).to be_truthy
    end

    it "is false when there is no user" do
      membership.user = nil
      expect(membership.has_stripe_subscriptions?).to be_falsy
    end

    it "is false when the user has no stripe customer" do
      membership.user.stripe_id = nil
      expect(membership.has_stripe_subscriptions?).to be_falsy
    end

    it "is false when the stripe subscriptions are empty" do
      allow(membership.user).to receive(:stripe_customer) {
        double(subscriptions: [])
      }
      expect(membership.has_stripe_subscriptions?).to be_falsy
    end
  end

  describe "corporate?" do
    it "is true for :corporate_emerald" do
      membership.level = :corporate_emerald
      expect(membership).to be_corporate
    end

    it "is true for :corporate_ruby" do
      membership.level = :corporate_ruby
      expect(membership).to be_corporate
    end

    it "is false for :developer_small" do
      membership.level = :developer_small
      expect(membership).to_not be_corporate
    end

    it "is false for :developer_medium" do
      membership.level = :developer_medium
      expect(membership).to_not be_corporate
    end
  end
end
