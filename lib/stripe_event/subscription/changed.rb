module StripeEvent
  module Subscription
    class Changed < Base

      def call(event)
        user = User.find_by_stripe_id(event.data.object.customer)
        user.try(:membership).try(:update, kind: event.data.object.plan.id)

        Stats.new(slack: true).monthly_revenue_projection
      end

    end
  end
end
