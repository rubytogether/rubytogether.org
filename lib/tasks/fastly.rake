namespace :fastly do
  desc "Purge all cached content from Fastly"
  task :purge do
    require_relative "../../config/initializers/fastly"
    require_relative "../../config/initializers/slack"
    FastlyRails.service.purge_all
    Slack.say("#{ENV["USER"]} purged Fastly cache for #{Rails.env}",
      channel: "#website",
      username: "fastly",
      icon_url: "https://pbs.twimg.com/profile_images/412715612473802753/9V2sLNfw_400x400.png"
    )
  end
end
