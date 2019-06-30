# == Schema Information
#
# Table name: users
#
#  id                              :integer          not null, primary key
#  email                           :string           default(""), not null
#  encrypted_password              :string           default(""), not null
#  reset_password_token            :string
#  reset_password_sent_at          :datetime
#  remember_created_at             :datetime
#  sign_in_count                   :integer          default(0), not null
#  current_sign_in_at              :datetime
#  last_sign_in_at                 :datetime
#  current_sign_in_ip              :inet
#  last_sign_in_ip                 :inet
#  created_at                      :datetime
#  updated_at                      :datetime
#  stripe_id                       :string
#  delinquent_notification_sent_at :datetime
#

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
