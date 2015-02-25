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
    create_membership_record(user, plan)
  rescue => e
    track_error(e)
  end

  def customer_for(user)
    if user.stripe_id
      customer = Stripe::Customer.retrieve(user.stripe_id)
    end

    if customer.nil? || customer.deleted
      Stripe::Customer.create(email: user.email).tap do |c|
        user.update_attribute(:stripe_id, c.id)
      end
    end
  end

  def set_card(customer, token)
    old_default = customer.default_source
    cards = customer.sources

    cards.create(card: token)
    cards.retrieve(old_default).delete if old_default
  end

  def subscribe_to_plan(customer, plan)
    customer.subscriptions.create(plan: plan)
  end

  def create_membership_record(user, plan)
    user.create_membership!(type: plan.id)
  end

private

  def track_error(e)
    # TODO send to exception logger
    return unless defined?(Rails)
    Rails.logger.debug(%|#{e.class}: #{e.message}\n#{e.backtrace.join("\n  ")}|)
    raise Error, "#{e.class}: #{e.message}"
  end

end