require "stripe_event/base"

module StripeEvent
  module Invoice
    class PaymentSucceeded < Base

      def call(event)
        @event = event
        @user = user_for_event(@event)
        return unless @user

        # If the event is an invoice, or has an invoice attached to it,
        # then it is for a user and that user will have a subscription
        return unless invoice? || charge?
        return unless customer_has_a_membership_plan?

        # if it is a charge object then we have to find the subscription
        # through the invoice.  Alternatively, we *could* override the event's
        # data object with the corresponding invoice.
        set_event_subscription if charge?
        return unless subscription

        # move back membership expiration time to the end paid for + 3.5 days.
        # The extra 3.5 days is for a payment failure grace period.
        @user.membership.update_attributes!(expires_at: new_period_end)

        # rebuild the members page in case this activated a membership
        FastlyRails.purge_by_key("members")
      end

      private

      def new_period_end
        Time.at(subscription.current_period_end) + 3.5.days
      end

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

      def customer
        @customer ||= stripe_customer_for_event(@event)
      end

      # Here we find out if the customer is signed up to a Ruby Together plan,
      # or some other kind of plan that doesn't fund Ruby Together directly.
      def customer_has_a_membership_plan?
        return false if customer.nil? || customer.deleted?

        membership_plans = MembershipPlan.stripe_plans.map(&:id)
        customer.subscriptions.any? do |subscription|
          membership_plans.include?(subscription.plan.id)
        end
      end

    end
  end
end
