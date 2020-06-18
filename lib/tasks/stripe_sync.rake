def update_membership(m)
  s = m.send(:stripe_subscription)
  return m.update!(expires_at: Time.now) if s.nil?

  expires_at = Time.at(s.current_period_end)
  m.update!(expires_at: expires_at)
rescue => e
  Rollbar.error(e, membership: m.attributes)
end

task stripe_sync: :environment do
  Membership.active.find_each do |m|
    update_membership(m)
    sleep 0.25
  end
end
