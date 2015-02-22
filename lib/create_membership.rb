require "stripe"

class CreateMembership
  Error = Class.new(RuntimeError)

  def self.run(user, token, plan)
    new.run(user, token, plan)
  end

  def run(user, token, plan)
    customer = customer_for(user)
    set_card(customer, token)
    subscribe_to_plan(customer, plan)
  rescue => e
    track_error(e, message)
  end

  def customer_for(user)
    if user.stripe_id
      Stripe::Customer.retrieve(user.stripe_id)
    else
      Stripe::Customer.create(email: user.email).tap do |c|
        user.update_attribute(:stripe_id, c.id)
      end
    end
  end

  def set_card(customer, token)
    old_default = customer.default_card
    cards = customer.sources

    cards.create(card: token)
    cards.retrieve(old_default).delete if old_default
  end

  def subscribe_to_plan(customer, plan)
    customer.subscriptions.create(plan: plan)
  end

private

  def track_error(e, message)
    # TODO send to exception logger
    return unless defined?(Rails)
    Rails.logger.debug(%|#{e.class}: #{e}\n#{e.backtrace.join("\n  ")}|)
    raise Error, message
  end

end