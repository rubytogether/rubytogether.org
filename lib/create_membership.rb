require "stripe"

class CreateMembership
  Error = Class.new(RuntimeError)

  def self.run(user, token, plan)
    new.run(user, token, plan)
  end

  def run(user, token, plan)
    customer = customer_for(user)
    card = set_card(customer, token)
    subscribe_to_plan(customer, plan)
    create_membership_record(user, card, plan)
  rescue => e
    Rollbar.error(e)
    raise Error, "#{e.class}: #{e.message}"
  end

  def customer_for(user)
    if user.stripe_id
      customer = Stripe::Customer.retrieve(user.stripe_id)
    end

    if customer.nil? || customer.respond_to?(:deleted) && customer.deleted
      Stripe::Customer.create(email: user.email).tap do |c|
        user.update_attribute(:stripe_id, c.id)
      end
    else
      customer
    end
  end

  def set_card(customer, token)
    old_default = customer.default_source
    cards = customer.sources

    card = cards.create(card: token)
    cards.retrieve(old_default).delete if old_default
    card
  end

  def subscribe_to_plan(customer, plan)
    customer.subscriptions.create(plan: plan)
  end

  def create_membership_record(user, card, plan)
    user.create_membership!(
      kind: plan.id,
      card_brand: card.brand,
      card_last4: card.last4
    )
  end

end