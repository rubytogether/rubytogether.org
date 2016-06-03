require "stripe_event/base"

module StripeEvent
  module Invoice
    class PaymentSucceeded < Base

      def call(event)
        @event = event

        # If the event is an invoice, or has an invoice attached to it,
        # then it is for a user and that user will have a subscription
        return unless invoice? || charge?

        # if it is a charge object then we have to find the subscription
        # through the invoice.  Alternatively, we *could* override the event's
        # data object with the corresponding invoice.
        set_event_subscription if charge?

        @user = user_for_event(@event)

        # move back membership expiration time to the end paid for
        expiration = Time.at(subscription.current_period_end)
        @user.membership.update_attributes!(expires_at: expiration)

        # rebuild the members page in case this activated a membership
        FastlyRails.purge_by_key("members")
      end

      private

      def charge?
        Stripe::Charge === @event.data.object
      end

      def invoice?
        Stripe::Invoice === @event.data.object ||
          @event.data.object.invoice.present?
      end

      def set_event_subscription
        @event.data.object.subscription = Stripe::Invoice.retrieve(
          @event.data.object.invoice
        ).subscription
      end

      def subscription
        @subscription ||= user_subscription_for_event(@user, @event)
      end

    end
  end
end
