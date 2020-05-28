class SyncStripePlansToMemberships < ActiveRecord::Migration[6.0]
  def change
    Membership.active.find_each do |m|
      s = m.send(:stripe_subscription)

      if s.nil?
        m.update!(expires_at: Time.now)
      else
        expires_at = Time.at(s.current_period_end)
        m.update!(expires_at: expires_at, amount: s.plan.amount)
      end

      sleep 0.5
    end
  end
end
