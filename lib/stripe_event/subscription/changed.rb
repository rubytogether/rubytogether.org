module StripeEvent
  module Subscription
    class Changed < Base

      def call(event)
        message = MembershipPlan.subscriber_counts.map do |plan, count|
          "#{count} #{plan.name.pluralize(count)}"
        end.to_sentence
        estimate = MembershipPlan.projected_monthly_revenue(Membership.prepaid)
        dollars = ActiveSupport::NumberHelper.number_to_currency(estimate/100)
        message << ". Projected revenue now #{dollars} per month."

        Slack.say(message,
          username: "Subscribers",
          channel: "#stripe",
          icon_emoji: ":chart_with_upwards_trend:"
        )
      end

    end
  end
end
