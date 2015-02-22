class CreateMembership
  Error = Class.new(RuntimeError)

  attr_reader :token, :email, :amount, :type

  def initialize(params = {})
    @token  = params.fetch(:id)
    @email  = params.fetch(:email)
    @type   = params.fetch(:metadata).fetch(:membership_type)
    @amount = membership_fee_for(@type)
  rescue => e
    track_error(e, "Invalid card data returned")
  end

  def run
    customer = create_customer(@email, @token)
    # TODO create user in database, send welcome email
    create_charge(customer.id, @amount, @type)
  end

private

  def create_customer(email, token)
    Stripe::Customer.create(
      :email => email,
      :card  => token
    )
  end

  def create_charge(id, amount, type)
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