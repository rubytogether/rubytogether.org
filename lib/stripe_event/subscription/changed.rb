module StripeEvent
  module Subscription
    class Changed < Base

      def call(event)
        message = MembershipPlan.subscriber_counts.map do |name, count|
          "#{count} #{name.pluralize(count)}"
        end.to_sentence

        Slack.say(message,
          username: "Subscribers",
          channel: "#stripe",
          icon_emoji: ":chart_with_upwards_trend:"
        )
      end

    end
  end
end