namespace :stats do
  desc "Calculate monthly stats"
  task :since, [:last_date] => [:environment] do |t, args|
    puts Stats.since(args[:last_date])
  end

  desc "Post expiring annual memberships to Slack."
  task :expiring_annual_memberships => [:environment] do |t, args|
    Slack.say Stats.expiring_annual_memberships,
      username: "Expiring Annual Subscribers",
      channel: "#stripe",
      icon_emoji: ":chart_with_downwards_trend:"
  end

  desc "Post recently expired memberships (last day by default) to Slack."
  task :expired_memberships, [:expires_at] => [:environment] do |t, args|
    Slack.say Stats.expired_memberships(expires_at ||= 1.day.ago),
      username: "Recently Expired Memberships",
      channel: "#stripe",
      icon_emoji: ":chart_with_downwards_trend:"
  end

  desc "Post projected monthly revenue to Slack."
  task :monthly_revenue_projection => [:environment] do
    Slack.say Stats.monthly_revenue_projection,
      username: "Subscribers",
      channel: "#stripe",
      icon_emoji: ":chart_with_upwards_trend:"
  end
end
