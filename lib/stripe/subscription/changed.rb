module Stripe
  class Subscription
    class Changed

      def call(event)
        msg = "Subscriber counts: "
        msg << MembershipPlan.subscriber_counts.map do |name, count|
          "#{count} #{name.capitalize}"
        end.to_sentence

        Slack.say(msg,
          username: "Subscribers",
          channel: "#stripe",
          icon_emoji: ":chart_with_upwards_trend:"
        )
      end

    end
  end
end