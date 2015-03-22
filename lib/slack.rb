require "http"

module Slack
  class << self
    attr_accessor :team, :notifier

    def invite(email)
      Slack.team && Slack.team.invite(email)
    end

    def say(message)
      Slack.notifier && Slack.notifier.ping(message)
    end
  end

  class Team
    def initialize(team, api_key)
      @team, @api_key = team, api_key
    end

    def invite(email)
      url = "https://#{@team}.slack.com/api/users.admin.invite"
      res = HTTP.post(url, form: {token: @api_key, email: email})
      raise "Slack invitation failed" unless res.status.code == 200
    end
  end

end
