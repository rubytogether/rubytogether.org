module Stripe
  class Invoice
    class PaymentSucceeded

      def initialize(logger)
        @logger = logger
      end

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

        expiration = Time.at(subscription.current_period_end)
        user.membership.update_attributes!(expires_at: expiration)
        FastlyRails.client.purge_by_key("members")
      end

    end
  end
end
