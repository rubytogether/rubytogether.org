require "rails_helper"

RSpec.describe MembershipsController, type: :controller do
  let(:user) { double("User", stripe_id: "c_1", email: "alice@example.com", devise_scope: :user) }

  describe "create" do
    before do
      expect(User).to receive(:where).with(email: "alice@example.com") do
        double(first_or_create!: user)
      end

      request.env['warden'] = double("warden", user: nil)
      expect(request.env['warden']).to receive(:set_user)
    end

    it "runs the membership creator" do
      expect(CreateMembership).to receive(:run).with({}, user, "abc", "individual")

      post :create, token: "abc", email: "alice@example.com", kind: "individual"

      expect(JSON.parse(response.body)).to include("result" => "success")
    end

    it "forwards corporate membership information" do
      membership = hash_including("contact_name" => "Some One", "expires_at" => 1.month.from_now.iso8601)
      expect(CreateMembership).to receive(:run).with(membership, user, "abc", "corporate")

      post :create, token: "abc", email: "alice@example.com", kind: "corporate",
        membership: {contact_name: "Some One"}

      expect(JSON.parse(response.body)).to include("result" => "success")
    end
  end

  describe "card" do
    let(:customer) { double(Customer) }
    let(:membership) { double(Membership) }

    it "updates the card number locally and with stripe" do
      allow(controller).to receive(:customer){ customer }
      allow(controller).to receive(:current_user){ user }
      expect(customer).to receive(:replace_card).with("abc"){ double(last4: "1234", brand: "Visa") }

      allow(user).to receive(:membership){ membership }
      expect(membership).to receive(:update!).with(card_brand: "Visa", card_last4: "1234")

      post :card, token: "abc"
      expect(JSON.parse(response.body)).to include("result" => "success")
    end
  end
end
