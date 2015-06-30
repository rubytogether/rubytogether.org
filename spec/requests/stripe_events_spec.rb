require 'vcr_helper'

RSpec.describe "Stripe webhooks", :vcr do

  describe "customer.source.created" do
    it "runs our hook" do
      user = User.create!(stripe_id: "cus_5zX7jk6DxkTfzh", email: "alice@example.com")
      membership = Membership.create(user: user, card_last4: "1234")

      expect {
        post "/stripe/events", id: "evt_15nY3HAcWgwn5pBtBmDJZBZq"
      }.to change { membership.reload.card_last4 }
    end

    context "when user doesn't exist yet" do
      it "returns a 404" do
        expect {
          post "/stripe/events", id: "evt_15nY3HAcWgwn5pBtBmDJZBZq"
        }.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end

  describe "invoice.payment_succeeded" do
    let(:user) { User.create!(stripe_id: "cus_5zX7jk6DxkTfzh", email: "alice@example.com") }
    let(:membership) { Membership.create(user: user, card_last4: "4242") }

    it "runs our hook" do
      expect {
        post "/stripe/events", id: "evt_15nY3IAcWgwn5pBtGGpjLCBH"
      }.to change { membership.reload.expires_at }
    end
  end

  describe "customer.subscription.created" do
    it "runs our hook" do
      message = "3 Personal Members, 4 Emerald Members, 1 Friend of Ruby Together, 0 Topaz Members, 0 Sapphire Members, and 2 Ruby Members"
      options = an_instance_of(Hash)
      expect(Slack).to receive(:say).with(message, options)
      post "/stripe/events", id: "evt_15nY3IAcWgwn5pBtisl4M4d6"
    end
  end

  describe "customer.subscription.destroyed" do
    it "runs our hook" do
      message = "0 Personal Members, 1 Emerald Member, 0 Friend of Ruby Togethers, 0 Topaz Members, 0 Sapphire Members, and 2 Ruby Members"
      options = an_instance_of(Hash)
      expect(Slack).to receive(:say).with(message, options)
      post "/stripe/events", id: "evt_16JFdCAcWgwn5pBtC5eqLlUX"
    end
  end

end