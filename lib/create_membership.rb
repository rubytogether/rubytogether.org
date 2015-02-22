class CreateMembership
  Error = Class.new(RuntimeError)

  def run(token, email, type)
    customer = create_customer(email, token)
    charge_customer(customer.id, amount, type)
  end

private

  def create_customer(email, token)
    # TODO send welcome email
    user = User.where(email: email).first_or_create!

    if user.stripe_id
      Stripe::Customer.retrieve(user.stripe_id).tap do |c|
        old = c.default_card
        c.sources.create(card: token)
        c.sources.retrieve(old).delete if old
      end
    else
      Stripe::Customer.create(email: email, card: token).tap do |c|
        user.update_attribute(stripe_id: c.id)
      end
    end
  end

  def charge_customer(id, amount, type)
    amount = membership_fee_for(type)

    Stripe::Charge.create(
      :customer    => id,
      :amount      => amount,
      :description => type,
      :currency    => 'usd'
    )
  rescue Stripe::CardError => e
    track_error(e, "Stripe error #{e.message}")
  end

  def membership_fee_for(type)
    case type
    when "individual"
      4000
    when "corporate"
      80000
    else
      raise Error, "unknown membership type #{type.inspect}"
    end
  end

  def track_error(e, message)
    # TODO send to exception logger
    return unless defined?(Rails)
    Rails.logger.debug(%|#{e.class}: #{e}\n#{e.backtrace.join("\n  ")}|)
    raise Error, message
  end

end