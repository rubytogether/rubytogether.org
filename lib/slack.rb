require "http"

module Slack
  class << self
    attr_accessor :team, :notifier

    def say(message, options = {})
      Slack.notifier && Slack.notifier.ping(message, options)
    end

    def invite(email)
      Slack.team && Slack.team.invite(email)
    end

    def deactivate(email)
      Slack.team && Slack.team.deactivate(email)
    end
  end

  class Team
    def initialize(team, api_key)
      @team, @api_key = team, api_key
    end

    def invite(email)
      res = post("/api/users.admin.invite", token: @api_key, email: email)
      raise "Slack invitation failed: #{response_debug(res)}" unless res.status.ok?
    end

    def deactivate(email)
      user_id = user_id_for(email)
      return unless user_id

      res = post("/api/users.admin.setInactive",
        user: user_id, set_active: true, token: @api_key)
      raise "Slack deactivate failed: #{response_debug(res)}" unless res.status.ok?
    end

  private

    def post(path, data)
      url = File.join("https://#{@team}.slack.com", path)
      HTTP.post(url, form: data)
    end

    def response_debug(res)
      "HTTP #{res.status.code} #{res.status.reason}\n#{res.body}"
    end

    def user_id_for(email)
      user_list_url = "https://slack.com/api/users.list?token=#{@api_key}"
      data = JSON.parse(HTTP.accept(:json).get(user_list_url).to_s)
      users = data.fetch("members", [])
      return if users.empty?

      user = users.find{|u| email == u.fetch("profile", {})["email"] }
      user && user.fetch("id", nil)
    end
  end

end
