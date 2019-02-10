if ENV.has_key?("SLACK_TEAM")
  require "slack"
  team = ENV.fetch("SLACK_TEAM")
  key  = ENV.fetch("SLACK_API_KEY")
  Slack.team = Slack::Team.new(team, key)
end

if ENV.has_key?("SLACK_WEBHOOK_URL")
  require "slack-notifier"
  Slack.notifier = Slack::Notifier.new(ENV.fetch("SLACK_WEBHOOK_URL"))
end
