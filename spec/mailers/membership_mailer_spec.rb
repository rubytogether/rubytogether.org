require "rails_helper"

RSpec.describe MembershipMailer, type: :mailer do
  describe "welcome" do
    let(:user) { User.new(email: "to@example.org") }
    let(:token) { "abc123" }
    let(:mail) { MembershipMailer.welcome(user, plan, token) }

    context "for members" do
      let(:plan) { "individual" }

      it "renders the headers" do
        expect(mail.subject).to eq("Welcome to Ruby Together")
        expect(mail.to).to eq(["to@example.org"])
        expect(mail.from).to eq(["hello@rubytogether.org"])
      end

      it "renders the body" do
        expect(mail.body.encoded).to include("Thanks for joining")
        expect(mail.body.encoded).to include("/membership?token=#{token}")
      end
    end

    context "for friends" do
      let(:plan) { "friend" }

      it "renders the headers" do
        expect(mail.subject).to eq("Thanks from Ruby Together")
        expect(mail.to).to eq(["to@example.org"])
        expect(mail.from).to eq(["hello@rubytogether.org"])
      end

      it "renders the body" do
        expect(mail.body.encoded).to include("Thanks for supporting")
        expect(mail.body.encoded).to include("/membership?token=#{token}")
      end
    end
  end
end
