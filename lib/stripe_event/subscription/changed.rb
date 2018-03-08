module StripeEvent
  module Subscription
    class Changed < Base

      def call(event)
        plan_id = event.data.object.plan.id.gsub(/_yearly$/, '')
        user = User.find_by_stripe_id(event.data.object.customer)
        user.try(:membership).try(:update, kind: plan_id)

        Slack.say Stats.monthly_revenue_projection,
          username: "Subscribers",
          channel: "#stripe",
          icon_emoji: ":chart_with_upwards_trend:"
      end

    end
  end
end
