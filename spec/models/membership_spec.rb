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
      membership.kind = :corporate_emerald
      expect(membership).to be_corporate
    end

    it "is false for :friend" do
      membership.kind = :friend
      expect(membership).to_not be_corporate
    end

    it "is false for :individual" do
      membership.kind = :individual
      expect(membership).to_not be_corporate
    end
  end
end
