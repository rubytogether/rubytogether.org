module StripeEvent
  module Subscription
    class Changed < Base

      def call(event)
        user = User.find_by_stripe_id(event.data.object.customer)
        user.try(:membership).try(:update, kind: event.data.object.plan.id)

        subscriber_counts = MembershipPlan.subscriber_counts
        message = subscriber_counts.map do |plan, count|
          "#{count} #{plan.name.pluralize(count)}"
        end.to_sentence
        estimate = projected_monthly_revenue(subscriber_counts, Membership.prepaid)
        dollars = ActiveSupport::NumberHelper.number_to_currency(estimate/100)
        message << ". Projected revenue now #{dollars} per month."

        Slack.say(message,
          username: "Subscribers",
          channel: "#stripe",
          icon_emoji: ":chart_with_upwards_trend:"
        )
      end

    private

      def projected_monthly_revenue(subscriber_counts, prepaid = {})
        prepaid_plans = prepaid.group_by(&:plan)
        estimate = subscriber_counts.inject(0) do |total, (plan, count)|
          monthly_count = count - prepaid_plans.fetch(plan, []).size
          total += plan.amount * monthly_count
        end

        estimate + 52000 # Stripe pays for 13 individual memberships, too
      end

    end
  end
end
