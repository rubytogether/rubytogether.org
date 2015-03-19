require "slack"

if ENV.has_key?("SLACK_TEAM")
  team = ENV.fetch("SLACK_TEAM")
  key  = ENV.fetch("SLACK_API_KEY")
  Slack.team = Slack.new(team, key)
end
