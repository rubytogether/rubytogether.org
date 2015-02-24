class MembershipPaid
  include Stripe::Callbacks

  after_invoice_payment_succeeded! do |invoice, event|
    mark_customer_paid_until(invoice.customer, invoice.period_end)
  end

private

  def mark_customer_paid_until(stripe_id, timestamp)
    user = User.where(stripe_id: stripe_id).first!
    user.update_attributes member_until: Time.at(timestamp)
  end

end