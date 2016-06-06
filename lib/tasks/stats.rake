namespace :stats do
  desc "Calculate monthly stats"
  task :since, [:last_date] => [:environment] do |t, args|
    Stats.new(slack: false).since(args[:last_date])
  end

  desc "Post expiring annual memberships to Slack."
  task :expiring_annual_memberships => [:environment] do |t, args|
    Stats.new(slack: true).expiring_annual_memberships
  end

  desc "Post recently expired memberships (last day by default) to Slack."
  task :expired_memberships, [:expires_at] => [:environment] do |t, args|
    Stats.new(slack: true).expired_memberships(expires_at ||= 1.day.ago)
  end

  desc "Post projected monthly revenue to Slack."
  task :monthly_revenue_projection => [:environment] do
    Stats.new(slack: true).monthly_revenue_projection
  end
end
