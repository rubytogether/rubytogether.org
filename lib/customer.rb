class Customer

  def self.for_user(user)
    new(user.stripe_id, user.email).tap do |c|
      user.update!(stripe_id: c.stripe_id)
    end
  end

  attr_reader :customer

  def initialize(stripe_id, email)
    @customer = find_or_create_customer(stripe_id, email)
  end

  def stripe_id
    customer.id
  end

  def replace_card(token)
    old_default = customer.default_source
    new_card = customer.sources.create(card: token)
    customer.sources.retrieve(old_default).delete if old_default

    new_card
  end

private

  def find_customer(stripe_id)
    customer = stripe_id && Stripe::Customer.retrieve(stripe_id)
    deleted?(customer) ? nil : customer
  rescue Stripe::InvalidRequestError
    nil
  end

  def find_or_create_customer(stripe_id, email)
    find_customer(stripe_id) || Stripe::Customer.create(email: email)
  end

  def deleted?(customer)
    customer.respond_to?(:deleted) && customer.deleted
  end

end