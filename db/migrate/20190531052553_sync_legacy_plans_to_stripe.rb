class SyncLegacyPlansToStripe < ActiveRecord::Migration[5.2]
  def up

    legacy_plans = {
      corporate_emerald: [50_00, 100_00, 200_00],
      corporate_sapphire: [800_00],
      individual_medium: [40_00],
    }

    legacy_plans.each do |id, amounts|
      amounts.each do |amount|
        plan = MembershipPlan.new(id, :month, amount)
        next if plan.stripe_plan

        Stripe::Plan.create({
          amount: plan.amount,
          interval: plan.interval.to_s,
          product: plan.product.stripe_id,
          nickname: "#{plan.nickname} (Legacy $#{amount/100})",
          currency: "usd",
          metadata: {legacy: true}
        })
      end
    end

    MembershipPlan.reload_stripe_plans!

  end
end
