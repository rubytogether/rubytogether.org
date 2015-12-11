require "rails_helper"
require "vcr_helper"

RSpec.describe User do
  describe "after_update" do
    let!(:user) { User.create!(email: "alice@example.com", stripe_id: "cus_7VmzGcohKDBG5L") }

    it "changes stripe customer email", vcr: true do
      user.update!(email: "bob@example.com")
      expect(Stripe::Customer.retrieve("cus_7VmzGcohKDBG5L").email).to eq("bob@example.com")
    end
  end
end
