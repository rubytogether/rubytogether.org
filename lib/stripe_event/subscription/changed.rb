module StripeEvent
  module Subscription
    class Changed < Base
      include ActiveSupport::NumberHelper

      def call(event)
        subscriber_counts = MembershipPlan.subscriber_counts
        message = subscriber_counts.map do |plan, count|
          "#{count} #{plan.name.pluralize(count)}"
        end.to_sentence

        estimate = subscriber_counts.inject(0) do |total, (plan, count)|
          total += plan.amount * count
        end
        message << ". Projected revenue now #{number_to_currency(estimate/100)} per month."

        Slack.say(message,
          username: "Subscribers",
          channel: "#stripe",
          icon_emoji: ":chart_with_upwards_trend:"
        )
      end

    end
  end
end