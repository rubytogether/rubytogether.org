class SyncPlansToStripe < ActiveRecord::Migration[5.2]
  def up

    MembershipPlan.all.each do |plan|
      if plan.stripe_plan
        plan.stripe_plan.nickname = plan.nickname
        plan.stripe_plan.save
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
