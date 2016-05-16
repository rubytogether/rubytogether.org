require "stripe_event/base"

module StripeEvent
  module Invoice
    class PaymentSucceeded < Base

      def call(event)
        @event = event

        return unless user
        return unless subscription

        # move back membership expiration time to the end paid for
        expiration = Time.at(subscription.current_period_end)
        user.membership.update_attributes!(expires_at: expiration)

        # rebuild the members page in case this activated a membership
        FastlyRails.purge_by_key("members")
      end

      private

      def subscription
        @subscription ||= user_subscription_for_event(@user, @event)
      end

      def user
        @user ||= user_for_event(@event)
      end

    end
  end
end
