class Add50kYearlyRuby < ActiveRecord::Migration[5.2]
  def change
    plan = MembershipPlan.new(:corporate_ruby, :year, 50_000_00)
    return if MembershipPlan.stripe_plan(plan.product, plan.amount)

    Stripe::Plan.create({
      amount:   plan.amount,
      interval: plan.interval.to_s,
      product:  plan.product.stripe_id,
      nickname: "#{plan.nickname} (Legacy $#{plan.dollar_amount})",
      currency: "usd",
      metadata: {legacy: true}
    })
  end
end
