require "slack"

RSpec.describe Slack::Team do
  subject(:slack) { Slack::Team.new("rt", "abc123") }

  describe "#invite" do
    def stub_invite(status)
      expect(HTTP).to receive(:post).with(
        "https://rt.slack.com/api/users.admin.invite",
        form: {token: "abc123", email: "a@b.c"}
      ).and_return(status)
    end

    it "asks Slack to send an invite" do
      stub_invite double(status: double(ok?: true))
      slack.invite("a@b.c")
    end

    it "raises on errors" do
      stub_invite double(body: "hi", status: double(
        ok?: false, code: 9001, reason: "noep"))
      expect { slack.invite("a@b.c") }.to raise_error("Slack invitation failed: HTTP 9001 noep\nhi")
    end
  end
end
