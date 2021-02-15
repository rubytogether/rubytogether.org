if ENV.has_key?("SLACK_TEAM")
  require "slack"
  team = ENV.fetch("SLACK_TEAM")
  key  = ENV.fetch("SLACK_API_KEY")
  Slack.team = Slack::Team.new(team, key)
end

if ENV.has_key?("SLACK_WEBHOOK_URL")
  require "slack-notifier"

  # https://github.com/stevenosloan/slack-notifier/issues/124#issuecomment-776169011
  module Slack
    class Notifier
      module Util
        class LinkFormatter

          # Outmoded for Ruby 3.0.0
          # def initialize string, formats: %i[html markdown]
          #   @formats = formats
          #   @orig    = string.respond_to?(:scrub) ? string.scrub : string
          # end

          # Monkey patch for Ruby 3.0.0
          def initialize string, in_opts={formats: %i[html markdown]}
            opts = in_opts || {}
            @formats = opts[:formats]
            @orig    = string.respond_to?(:scrub) ? string.scrub : string
          end

        end
      end
    end
  end

  Slack.notifier = Slack::Notifier.new(ENV.fetch("SLACK_WEBHOOK_URL"))
end
