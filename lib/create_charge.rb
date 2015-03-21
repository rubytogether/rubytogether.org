class CreateCharge
  Error = Class.new(RuntimeError)

  def run(token, amount)
    charge_customer(token, amount)
  rescue => e
    Rollbar.error(e)
    raise Error, "#{e.class}: #{e.message}"
  end

  def charge_customer(token, dollars)
    amount = dollars * 100

    Stripe::Charge.create(
      :amount => amount,
      :currency => "usd",
      :source => token,
      :description => "Contribution to Ruby Together"
    )
  end

end
