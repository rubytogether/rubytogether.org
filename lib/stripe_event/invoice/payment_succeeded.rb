require "stripe_event/base"

module StripeEvent
  module Invoice
    class PaymentSucceeded < Base

      def call(event)
        user = user_for_event(event)
        return unless user

        subscription = user.stripe_customer.subscriptions.find do |s|
          s.id == event.data.object.subscription
        end
        return unless subscription

        # move back membership expiration time to the end paid for
        expiration = Time.at(subscription.current_period_end)
        user.membership.update_attributes!(expires_at: expiration)

        # rebuild the members page in case this activated a membership
        FastlyRails.purge_by_key("members")
      end

    end
  end
end
