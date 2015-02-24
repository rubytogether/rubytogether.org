class Stripe
  class Invoice
    module PaymentSucceeded
      include Stripe::Callbacks

      after_invoice_payment_succeeded! do |invoice, event|
        mark_customer_paid_until(invoice.customer, invoice.period_end)
      end

    private

      def mark_customer_paid_until(stripe_id, timestamp)
        user = User.where(stripe_id: stripe_id).first!
        user && user.update_attributes member_until: Time.at(timestamp)
      rescue => e
        Rails.logger.error("#{e.class}: #{e.message}", e.backtrace.join("  \n"))
      end

    end
  end
end