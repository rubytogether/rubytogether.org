require "rails_helper"

RSpec.describe PaymentMailer, type: :mailer do
  describe "delinquent" do
    let(:user) { User.new(email: "to@example.org") }
    let(:mail) { PaymentMailer.delinquent(user) }

    it "emails asking to reactivate" do
      expect(mail.subject).to eq("Reactivate your Ruby Together subscription?")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["hello@rubytogether.org"])
      expect(mail.body.encoded).to include("Ruby Together payments failed a few")
    end
  end
end
