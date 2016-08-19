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

  describe ".never_notified_of_delinquency" do
    let!(:alice) {
      User.create! email: "alice@example.org", delinquent_notification_sent_at: Time.now
    }
    let!(:bob) {
      User.create! email: "bob@example.org", delinquent_notification_sent_at: nil
    }

    it "only finds users who have never been notified" do
      expect(User.never_notified_of_delinquency).to include(bob)
      expect(User.never_notified_of_delinquency).not_to include(alice)
    end
  end
end
