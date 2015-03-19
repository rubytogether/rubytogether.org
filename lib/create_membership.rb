require "stripe"
require "slack"

class CreateMembership
  Error = Class.new(RuntimeError)

  def self.run(info, user, token, plan_name)
    new.run(info, user, token, plan_name)
  end

  def run(info, user, token, plan_name)
    customer = customer_for(user)
    card = set_card(customer, token)
    plan = plan_for(plan_name)
    subscribe_to_plan(customer, plan)
    create_membership_record(info, user, card, plan)
    email_new_member(user)
    invite_to_slack(user)
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

  def create_membership_record(info, user, card, plan)
    attrs = info.merge(
      kind: plan.id,
      card_brand: card.brand,
      card_last4: card.last4
    )
    user.create_membership!(attrs)
  end

  def email_new_member(user)
    token = user.generate_reset_password_token!
    MembershipMailer.welcome(user, token).deliver_later
  end

  def invite_to_slack(user)
    Slack.team.invite(user.email)
  end

  def plan_for(kind)
    case kind
    when "individual"
      Stripe::Plans::INDIVIDUAL
    when "corporate"
      Stripe::Plans::CORPORATE
    else
      raise Error, "unknown membership kind #{kind.inspect}"
    end
  end

end