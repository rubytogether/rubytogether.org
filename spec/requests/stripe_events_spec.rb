require 'vcr_helper'

RSpec.describe "Stripe webhooks", :vcr do

  describe "customer.source.created" do
    it "runs our hook" do
      user = User.create!(stripe_id: "cus_5uQi8EF4cZQdZR", email: "a@b.c")
      membership = Membership.create(user: user, card_last4: "1234")

      expect {
        post "/stripe/events", id: "evt_15jcmzAcWgwn5pBtGKgreAit"
      }.to change { membership.reload.card_last4 }
    end

    context "when user doesn't exist yet" do
      it "returns a 404" do
        expect {
          post "/stripe/events", id: "evt_15jcmzAcWgwn5pBtGKgreAit"
        }.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end

  describe "invoice.payment_succeeded" do
    let(:user) { User.create!(stripe_id: "cus_5vO2rfTHabe64S", email: "a@b.c") }
    let(:membership) { Membership.create(user: user) }

    it "runs our hook" do
      expect {
        post "/stripe/events", id: "evt_15jXGYAcWgwn5pBt2B2eZ6A9"
      }.to change { membership.reload.expires_at }
    end
  end

  describe "customer.subscription.created" do
    it "runs our hook" do
      message = "Subscriber counts: 6 Friend, 49 Individual, and 1 Corporate"
      options = an_instance_of(Hash)
      expect(Slack).to receive(:say).with(message, options)
      post "/stripe/events", id: "evt_15jXGYAcWgwn5pBtLeHe5w20"
    end
  end

end