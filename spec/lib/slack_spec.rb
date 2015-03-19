require "slack"

describe Slack do
  subject(:slack) { Slack.new("rt", "abc123") }

  describe "#invite" do
    def stub_invite(status)
      expect(HTTP).to receive(:post).with(
        "https://rt.slack.com/api/users.admin.invite",
        form: {token: "abc123", email: "a@b.c"}
      ).and_return(status)
    end

    it "asks Slack to send an invite" do
      stub_invite double(status: double(code: 200))
      slack.invite("a@b.c")
    end

    it "raises on errors" do
      stub_invite double(status: double(code: 403))
      expect { slack.invite("a@b.c") }.to raise_error("Slack invitation failed")
    end
  end
end