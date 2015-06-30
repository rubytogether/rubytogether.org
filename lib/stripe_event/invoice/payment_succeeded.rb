module StripeEvent
  module Invoice
    class PaymentSucceeded

      def call(event)
        invoice = event.data.object

        customer = Stripe::Customer.retrieve(invoice.customer)
        return if customer.respond_to?(:deleted) && customer.deleted

        subscription = customer.subscriptions.find do |s|
          s.id == invoice.subscription
        end
        return unless subscription

        user = User.where(stripe_id: customer.id).includes(:membership).first
        return unless user

        # move back membership expiration time to the end paid for
        expiration = Time.at(subscription.current_period_end)
        user.membership.update_attributes!(expires_at: expiration)

        # rebuild the members page in case this activated a membership
        FastlyRails.purge_by_key("members")
      end

    end
  end
end
