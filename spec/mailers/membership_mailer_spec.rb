require "rails_helper"

RSpec.describe MembershipMailer, type: :mailer do
  describe "welcome" do
    let(:mail) { MembershipMailer.welcome }

    it "renders the headers" do
      expect(mail.subject).to eq("Welcome")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "goodbye" do
    let(:mail) { MembershipMailer.goodbye }

    it "renders the headers" do
      expect(mail.subject).to eq("Goodbye")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "problem" do
    let(:mail) { MembershipMailer.problem }

    it "renders the headers" do
      expect(mail.subject).to eq("Problem")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
