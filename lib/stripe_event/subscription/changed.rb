module StripeEvent
  module Subscription
    class Changed < Base
      include ActiveSupport::NumberHelper

      def call(event)
        subscriber_counts = MembershipPlan.subscriber_counts
        message = subscriber_counts.map do |plan, count|
          "#{count} #{plan.name.pluralize(count)}"
        end.to_sentence

        prepaid = Membership.where("expires_at > ?", 1.month.from_now).group_by(&:plan)

        estimate = subscriber_counts.inject(0) do |total, (plan, count)|
          monthly_count = count - prepaid.fetch(plan, []).size
          total += plan.amount * monthly_count
        end
        estimate += 52000 # Stripe pays for 13 individual memberships, too
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
