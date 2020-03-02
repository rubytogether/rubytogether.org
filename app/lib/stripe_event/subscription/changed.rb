module StripeEvent
  module Subscription
    class Changed < Base

      def call(event)
        user = user_for_event(event)
        sub = user_subscription_for_event(user, event)

        return unless sub&.plan&.product
        level = MembershipProduct.find_by_stripe_id(sub.plan.product).id
        user&.membership&.update(
          interval: sub.plan.interval,
          level: level
        )
      end

    end
  end
end
