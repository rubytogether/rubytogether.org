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
