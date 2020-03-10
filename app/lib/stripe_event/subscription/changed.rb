module StripeEvent
  module Subscription
    class Changed < Base

      def call(event)
        user = user_for_event(event)
        return unless user

        sub = user_subscription_for_event(user, event)
        return unless sub&.plan&.product

        product = MembershipProduct.find_by_stripe_id(sub.plan.product)
        return unless product

        user.membership&.update(
          interval: sub.plan.interval,
          level: product.id
        )
      end

    end
  end
end
