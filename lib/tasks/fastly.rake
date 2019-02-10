namespace :fastly do
  desc "Purge all cached content from Fastly"
  task :purge do
    # So that the Slack initializer can load app/lib/slack
    $LOAD_PATH.unshift File.expand_path("../../app/lib", __dir__)

    require_relative "../../config/initializers/fastly"
    require_relative "../../config/initializers/slack"

    FastlyRails.purge_all
    Slack.say("#{ENV["USER"]} purged Fastly cache for #{Rails.env}",
      channel: "#website",
      username: "fastly",
      icon_url: "https://pbs.twimg.com/profile_images/412715612473802753/9V2sLNfw_400x400.png"
    )
  end
end
