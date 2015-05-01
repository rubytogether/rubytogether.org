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
end
