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

  let(:slack_options) { {:username=>"Subscribers", :channel=>"#stripe", :icon_emoji=>":chart_with_upwards_trend:"} }

  describe "customer.subscription.created" do
    let(:message) {
      "1 Onyx Memberbership, 0 Emerald Memberberships, 0 Jade Memberberships, 2 Ruby Memberships, 0 Sapphire Memberships, 0 Topaz Memberships, 1 Friend of Ruby Together, and 3 Developer Memberships. Projected revenue now $10,700.00 per month."
    }

    it "runs our hook" do
      expect(Slack).to receive(:say).with(message, slack_options)
      post "/stripe/events", id: "evt_15nY3IAcWgwn5pBtisl4M4d6"
    end
  end

  describe "customer.subscription.destroyed" do
    let(:message) {
      "1 Onyx Memberbership, 0 Emerald Memberberships, 0 Jade Memberberships, 2 Ruby Memberships, 0 Sapphire Memberships, 0 Topaz Memberships, 0 Friends of Ruby Together, and 0 Developer Memberships. Projected revenue now $10,570.00 per month."
    }

    it "runs our hook" do
      User.create!(stripe_id: "cus_6VvtoGAz7B9hfA", email: "alice@example.com")
      expect(Slack).to receive(:say).with(message, slack_options)
      expect(Slack).to receive(:deactivate).with("alice@example.com")
      post "/stripe/events", id: "evt_16JFdCAcWgwn5pBtC5eqLlUX"
    end
  end

end
