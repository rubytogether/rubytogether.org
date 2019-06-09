require "rails_helper"

RSpec.describe MembershipsController, type: :controller do
  let(:user) { double("User", stripe_id: "c_1", email: "alice@example.com", devise_scope: :user) }

  describe "create" do
    include ActiveSupport::Testing::TimeHelpers

    before do
      expect(User).to receive(:where).with(email: "alice@example.com") do
        double(first_or_create!: user)
      end

      request.env['warden'] = double("warden", user: nil, authenticate: nil)
      expect(request.env['warden']).to receive(:set_user)
    end

    it "runs the membership creator" do
      expect(CreateMembership).to receive(:run).with({}, user, "abc", "developer_medium")

      post :create, params: {
        token: "abc", email: "alice@example.com", level: "developer_medium"
      }

      expect(JSON.parse(response.body)).to include("result" => "success")
    end

    it "forwards corporate membership information" do
      travel 1.hour do
        membership = hash_including("contact_name" => "Some One", "expires_at" => 1.month.from_now.iso8601)
        expect(CreateMembership).to receive(:run).with(membership, user, "abc", "corporate_ruby")

        post :create, params: {
          token: "abc", email: "alice@example.com", level: "corporate_ruby",
          membership: {contact_name: "Some One"}
        }

        expect(JSON.parse(response.body)).to include("result" => "success")
      end
    end
  end

  shared_context "member" do
    let(:customer) { double(Customer) }
    let(:membership) { double(Membership) }

    before do
      allow(controller).to receive(:customer){ customer }
      allow(controller).to receive(:current_user){ user }
      allow(user).to receive(:membership){ membership }
    end
  end

  describe "card" do
    include_context "member"

    it "updates the card number locally and with stripe" do
      expect(customer).to receive(:replace_card).with("abc"){ double(last4: "1234", brand: "Visa") }
      expect(membership).to receive(:update!).with(card_brand: "Visa", card_last4: "1234")

      post :card, params: { token: "abc" }
      expect(JSON.parse(response.body)).to include("result" => "success")
    end
  end

  describe "show" do
    let(:user) { User.new(email: "alice@example.com") }
    include_context "member"

    it "renders successfully" do
      token = "abc123"
      expect(User).to receive(:with_reset_password_token).with(token){ user }
      get :show, params: { token: token }
      expect(response.body).to eq("")
    end
  end
end
