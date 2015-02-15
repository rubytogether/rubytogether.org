class CreateMembership
  Error = Class.new(RuntimeError)

  attr_reader :token, :email, :amount, :type

  def initialize(params = {})
    @token  = params.fetch(:id)
    @email  = params.fetch(:email)
    @amount = params.fetch(:amount).to_i
    @type   = membership_type_for(@amount)
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

  def create_charge(id, amount)
    Stripe::Charge.create(
      :customer    => id,
      :amount      => amount,
      :description => type,
      :currency    => 'usd'
    )
  rescue Stripe::CardError => e
    debug_error(e)
    raise Error, "Stripe error #{e.message}"
  end

  def membership_type_for(amount)
    case amount
    when 4000
      "Individual Member"
    when 80000
      "Corporate Member"
    else
      raise Error, "unknown membership amount #{amount.inspect}"
    end
  end

  def debug_error(e)
    # TODO send to exception logger
    return unless defined?(Rails)
    Rails.logger.debug(%|#{e.class}: #{e}\n#{e.backtrace.join("\n  ")}|)
  end

end