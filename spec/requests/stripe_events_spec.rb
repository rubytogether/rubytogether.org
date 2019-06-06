require 'vcr_helper'

RSpec.describe "Stripe webhooks", type: :request, vcr: true do

  describe "customer.source.created" do
    it "runs our hook" do
      user = User.create!(stripe_id: "cus_8U1TcYRfvl8VqP", email: "alice@example.com")
      membership = Membership.create!(user: user, card_last4: "1234")

      expect {
        post_stripe_event "customer_source_created"
      }.to change { membership.reload.card_last4 }
    end

    context "when user's membership doesn't exist" do
      it "reports the missing membership to Rollbar" do
        User.create!(stripe_id: "cus_8U1TcYRfvl8VqP", email: "alice@example.com")

        expect(Rollbar).to receive(:error).with(ActiveRecord::RecordNotFound)
        post_stripe_event "customer_source_created"
        expect(response.status).to eq(200)
      end
    end
  end

  describe "invoice.payment_succeeded" do
    let!(:user) { User.create!(stripe_id: "cus_8U1TcYRfvl8VqP", email: "alice@example.com") }
    let!(:membership) { Membership.create(user: user, card_last4: "4242") }
    let(:new_period_end) { Time.now + 3.5.days }

    before do
      allow_any_instance_of(StripeEvent::Invoice::PaymentSucceeded).
        to receive(:new_period_end).and_return(new_period_end)
    end

    it "runs our hook" do
      expect {
        post_stripe_event "invoice_payment_succeeded"
      }.to change { membership.reload.expires_at }.from(nil).to be_within(0.1).of(new_period_end)
    end
  end

  describe "invoice.payment_failed" do
    let(:user) { User.create!(stripe_id: "cus_8U1TcYRfvl8VqP", email: "alice@example.com") }
    let!(:membership) { Membership.create(user: user, card_last4: "0341", name: "Alice") }

    it "runs our hook" do
      expect {
        perform_enqueued_jobs do
          post_stripe_event "invoice_payment_failed"
        end
      }.to change(ActionMailer::Base.deliveries, :count).by(1)

      expect(ActionMailer::Base.deliveries.last.to).to include(user.email)
      token = ActionMailer::Base.deliveries.last.body.parts.first.body.to_s.scan(
        %r{\?token=(.*)}
      ).flatten.first.to_s.chop
      expect(token).to be_present, "Password reset token was not found in the email."
      expect(User.with_reset_password_token(token)).to eq(user)
    end
  end

end
