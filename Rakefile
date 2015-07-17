# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

namespace :fastly do
  desc "Purge all cached content from Fastly"
  task :purge do
    require_relative "./config/initializers/fastly"
    require_relative "./config/initializers/slack"
    # FastlyRails.service.purge_all
    Slack.say("#{ENV["USER"]} purged Fastly cache for #{Rails.env}",
      channel: "#website",
      username: "fastly",
      icon_url: "https://pbs.twimg.com/profile_images/412715612473802753/9V2sLNfw_400x400.png"
    )
  end
end

namespace :stripe do
  desc "Send plans to Stripe"
  task :plans do
    require_relative "./config/initializers/stripe"
    current_ids = Stripe::Plan.all.map(&:id)

    all_plans = MembershipPlan.all.values
    all_plans.each do |plan|
      if current_ids.include?(plan.id)
        puts "Plan #{plan.id} (#{plan.name}) already exists."
      else
        puts "Creating plan #{plan.id} (#{plan.name})..."
        Stripe::Plan.create(plan.to_h)
      end
    end
  end
end
