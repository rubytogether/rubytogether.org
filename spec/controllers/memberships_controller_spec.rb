require "rails_helper"

RSpec.describe MembershipsController, type: :controller do
  describe "create" do
    let(:user) { double("User") }

    before do
      expect(User).to receive(:where).with(email: "alice@example.com") do
        double(first_or_create!: user)
      end
    end

    it "runs the membership creator" do
      expect(CreateMembership).to receive(:run).with({}, user, "abc", "individual")

      post :create, token: "abc", email: "alice@example.com", kind: "individual"

      expect(JSON.parse(response.body)).to include("result" => "success")
    end

    it "forwards corporate membership information" do
      expect(CreateMembership).to receive(:run).with(
        {"contact_name" => "Some One"}, user, "abc", "corporate")

      post :create, token: "abc", email: "alice@example.com", kind: "corporate",
        membership: {contact_name: "Some One"}

      expect(JSON.parse(response.body)).to include("result" => "success")
    end
  end
end
