require "rails_helper"

RSpec.describe ChargesController, type: :controller do

  describe "#create" do
    it "runs the charge creator" do
      expect(CreateCharge).to receive(:run).with("abc", 1, "alice@example.com")

      post :create, token: "abc", email: "alice@example.com", amount: "1"

      expect(JSON.parse(response.body)).to include("result" => "success")
    end

    context "when the creator returns an error" do
      it "forwards the error message" do
        expect(CreateCharge).to receive(:run).
          and_raise(CreateCharge::Error, "Can't touch this.")
        post :create, token: "abc", email: "alice@example.com", amount: "0.01"
        res = JSON.parse(response.body)
        expect(res).to include("result" => "failure")
        expect(res).to include("message" => "Can't touch this.")
      end
    end

    context "when something blows up" do
      it "shows a generic error message" do
        expect(CreateCharge).to receive(:run).
          and_raise(RuntimeError, "oh noes")
        post :create, token: "abc", email: "alice@example.com", amount: "1"
        res = JSON.parse(response.body)
        expect(res).to include("result" => "failure")
        expect(res).to include("message" => a_string_starting_with(
          "There was an error while charging your card."))
      end
    end
  end

end
