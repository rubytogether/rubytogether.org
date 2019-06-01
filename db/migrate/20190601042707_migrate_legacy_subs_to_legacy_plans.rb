require "membership_plan"

class MigrateLegacySubsToLegacyPlans < ActiveRecord::Migration[5.2]
  class Membership < ActiveRecord::Base; end

  def up

    map = {
      friend: MembershipPlan.monthly(:developer_small),
      individual: MembershipPlan.new(:developer_medium, :month, 40_00),
      corporate_onyx: MembershipPlan.new(:corporate_emerald, :month, 50_00),
      corporate_jade: MembershipPlan.new(:corporate_emerald, :month, 100_00),
      corporate_topaz: MembershipPlan.new(:corporate_emerald, :month, 200_00),
      corporate_emerald: MembershipPlan.new(:corporate_sapphire, :month, 800_00),
    }
    map.values.each{|mp| def mp.nickname; super + " (Legacy $#{amount/100})"; end }

    map.each do |source_plan_id, destination_plan|
      say "Migrating #{source_plan_id} to #{destination_plan.nickname} (Legacy)"

      Membership.where(membership_plan_id: source_plan_id).
        update(membership_plan_id: destination_plan.product_id)
      say "Changed `#{source_plan_id}` in database to `#{destination_plan.product_id}`", true

      Stripe::Subscription.list(plan: source_plan_id).auto_paging_each do |sub|
        Stripe::Subscription.update(sub.id, plan: destination_plan.stripe_id)
        say "Moved `#{sub.id}` from `#{source_plan_id}` " \
          "to `#{destination_plan.nickname}`", true
      end
    end

  end
end
