class SyncStripePlansToMemberships < ActiveRecord::Migration[6.0]
  def change
    Membership.active.find_each do |m|
      s = m.send(:stripe_subscription)

      begin
        if s.nil?
          m.update!(expires_at: Time.now)
        else
          expires_at = Time.at(s.current_period_end)
          m.update!(expires_at: expires_at, amount: s.plan.amount)
        end
      rescue => e
        puts [e.class, e.message].join(":")
        p [m.id, m.name, m.user&.email]
      end

      sleep 0.5
    end
  end
end
