require "stripe_event/base"

module StripeEvent
  module Invoice
    class PaymentFailed < Base

      def call(event)
        @event = event

        return unless user

        # send an email notifying the user of the payment failure.
        PaymentMailer.failure(user).deliver_later

        # rebuild the members page in case this de-activated a membership
        FastlyRails.purge_by_key("members")
      end

      private

      def user
        @user ||= user_for_event(@event)
      end

    end
  end
end
