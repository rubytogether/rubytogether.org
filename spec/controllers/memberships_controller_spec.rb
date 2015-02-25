require "rails_helper"

RSpec.describe MembershipsController, type: :controller do
  describe "create" do
    let(:user) { double("User") }
    let(:plan) { double(name: "plan", amount: 100) }

    it "runs the membership creator" do
      expect(User).to receive(:where).with(email: "alice@example.com") do
        double(first_or_create!: user)
      end
      expect(subject).to receive(:plan_for).with("individual") { plan }
      expect(CreateMembership).to receive(:run).with(user, "abc", plan)

      post :create, token: "abc", email: "alice@example.com", kind: "individual"

      expect(JSON.parse(response.body)).to include("result" => "success")
    end
  end
end
