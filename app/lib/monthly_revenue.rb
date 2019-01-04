module MonthlyRevenue
  def self.projected(subscriber_counts, prepaid = {})
    prepaid_plans = prepaid.group_by(&:plan)
    estimate = subscriber_counts.inject(0) do |total, (plan, count)|
      monthly_count = count - prepaid_plans.fetch(plan, []).size
      total += plan.amount * monthly_count
    end

    estimate + 52000 # Stripe pays for 13 individual memberships, too
  end
end
