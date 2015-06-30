require "rails_helper"

RSpec.describe MembershipMailer, type: :mailer do
  describe "welcome" do
    let(:user) { User.new(email: "to@example.org") }
    let(:token) { "abc123" }
    let(:mail) { MembershipMailer.welcome(user, plan, token) }

    context "for members" do
      let(:plan) { "individual" }

      it "emails thanks for joining" do
        expect(mail.subject).to eq("Welcome to Ruby Together")
        expect(mail.to).to eq(["to@example.org"])
        expect(mail.from).to eq(["hello@rubytogether.org"])
        expect(mail.body.encoded).to include("Thanks for joining")
        expect(mail.body.encoded).to include("/membership?token=#{token}")
      end
    end

    context "for friends" do
      let(:plan) { "friend" }

      it "emails thanks for supporting" do
        expect(mail.subject).to eq("Thanks from Ruby Together")
        expect(mail.to).to eq(["to@example.org"])
        expect(mail.from).to eq(["hello@rubytogether.org"])
        expect(mail.body.encoded).to include('<h1 class="center">Thanks</h1>')
        expect(mail.body.encoded).to include("We appreciate your support")
        expect(mail.body.encoded).to include("/membership?token=#{token}")
      end
    end
  end
end
