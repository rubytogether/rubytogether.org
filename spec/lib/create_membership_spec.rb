require "create_membership"

RSpec.describe CreateMembership do

  describe "#customer_for" do
    it "finds customer if user has stripe_id" do
      user = double("User", stripe_id: "cust_1")
      customer = double("Customer")
      expect(Stripe::Customer).to receive(:retrieve) { customer }

      expect(subject.customer_for(user)).to eq(customer)
    end

    it "creates customer if user lacks stripe_id" do
      user = double("User", stripe_id: nil, email: "a@b.c")
      expect(Stripe::Customer).to receive(:create).
        with(email: "a@b.c").
        and_return(double(id: "cust_1"))
      expect(user).to receive(:update_attribute).with(:stripe_id, "cust_1")

      subject.customer_for(user)
    end
  end

  describe "#set_card" do
    let(:cards) { double("Cards") }

    context "without existing card" do
      let(:customer) { double("Customer", sources: cards, default_source: nil) }

      it "adds the card" do
        expect(cards).to receive(:create).with(card: "card_1")
        subject.set_card(customer, "card_1")
      end
    end

    context "with existing card" do
      let(:customer) { double("Customer", sources: cards, default_source: "card_1") }

      it "adds the card and deletes the old one" do
        expect(cards).to receive(:retrieve).with("card_1") do
          double("Card 1").tap{|c| expect(c).to receive(:delete) }
        end
        expect(cards).to receive(:create).with(card: "card_2")

        subject.set_card(customer, "card_2")
      end
    end
  end

  describe "#subscribe_to_plan" do
    let(:subs) { double("Subscriptions") }
    let(:user) { double("User", stripe_id: "cust_1", subscriptions: subs) }
    let(:plan) { double("Plan", amount: 100, id: "plan") }

    it "charges the user for the plan" do
      expect(subs).to receive(:create).with(plan: plan.id)
      subject.subscribe_to_plan(user, plan)
    end
  end

  describe "#invite_to_slack" do
    let(:user) { double("User", email: "a@b.c") }

    it "POSTs to Slack asking for an invite" do
      slack = double("Slack").tap{|d| expect(d).to receive(:invite) }
      allow(Slack).to receive(:team) { slack }

      plan = double(id: "individual")
      subject.invite_to_slack(user, plan)
    end

    it "doesn't invite friends" do
      plan = double(id: "friend")
      subject.invite_to_slack(user, plan)
    end
  end

end