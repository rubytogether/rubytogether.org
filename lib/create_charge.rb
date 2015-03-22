class CreateCharge
  Error = Class.new(RuntimeError)

  def run(token, amount, email)
    validate_amount(amount)
    charge_customer(token, amount, email)
  rescue => e
    Rollbar.error(e)
    raise Error, "#{e.class}: #{e.message}"
  end

  def validate_amount(amount)
    raise Error, "Minimum amount is $1" if amount < 1
  end

  def charge_customer(token, dollars, email)
    amount = dollars * 100

    Stripe::Charge.create(
      :receipt_email => email,
      :amount => amount,
      :currency => "usd",
      :source => token,
      :description => "Contribution to Ruby Together"
    )
  end

end
