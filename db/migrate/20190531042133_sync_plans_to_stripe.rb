class SyncPlansToStripe < ActiveRecord::Migration[5.2]
  def up

    MembershipPlan.all.each do |plan|
      existing = MembershipPlan.stripe_plan(plan.product, plan.amount)

      if existing
        existing.nickname = plan.nickname
        existing.save
      else
        Stripe::Plan.create({
          amount: plan.amount,
          interval: plan.interval.to_s,
          product: plan.product.stripe_id,
          nickname: plan.nickname,
          currency: "usd",
        })
      end
    end

    MembershipPlan.reload_stripe_plans!

  end
end
