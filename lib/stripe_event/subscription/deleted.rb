require "stripe_event/subscription/changed"

module StripeEvent
  module Subscription
    class Deleted < Base

      def call(event)
        # notify stripe of subscription numbers
        StripeEvent::Subscription::Changed.new.call(event)

        # disable Slack account
        user = user_for_event(event)
        user && Slack.deactivate(user.email)
      end

    end
  end
end