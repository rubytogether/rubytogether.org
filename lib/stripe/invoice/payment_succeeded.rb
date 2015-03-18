module Stripe
  class Invoice
    class PaymentSucceeded

      def initialize(logger)
        @logger = logger
      end

      def call(event)
        invoice = event.data.object
        customer = Stripe::Customer.retrieve(invoice.customer)
        subscription = customer.subscriptions.retrieve(invoice.subscription)
        expiration = Time.at(subscription.current_period_end)
        user = User.where(stripe_id: customer.id).includes(:membership).first

        if user
          user.membership.update_attributes!(expires_at: expiration)
          FastlyRails.client.purge_by_key("members")
        end
      end

    end
  end
end
