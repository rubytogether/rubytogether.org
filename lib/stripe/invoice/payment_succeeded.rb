module Stripe
  class Invoice
    class PaymentSucceeded
      include Stripe::Callbacks

      after_invoice_payment_succeeded! do |invoice, event|
        customer = Stripe::Customer.retrieve(invoice.customer)
        subscription = customer.subscriptions.retrieve(invoice.subscription)
        expiration = Time.at(subscription.current_period_end)
        user = User.where(stripe_id: customer.id).first!
        user.membership.update_attributes!(expires_at: expiration)
      end

    end
  end
end