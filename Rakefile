# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

namespace :fastly do
  desc "Purge all cached content from Fastly"
  task :purge do
    require_relative "./config/initializers/fastly"
    require_relative "./config/initializers/slack"
    FastlyRails.service.purge_all
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
        Stripe::Plan.create(plan.to_stripe)
      end
    end
  end
end

namespace :stats do
  desc "Calculate monthly stats"
  task :since, [:last_date] => [:environment] do |t, args|
    new_members = Membership.since(args[:last_date])
    groups = new_members.group_by(&:kind)
    plans = MembershipPlan.all.values.sort_by(&:amount)

    plans.select{|plan| groups[plan.id] }.
      map{|plan| [plan, groups[plan.id]] }.
      each do |plan, group|
        puts "#{group.size} new #{plan.shortname} #{"member".pluralize(group.size)}: #{group.map(&:name).compact.to_sentence}"
      end

    companies, people = new_members.partition(&:corporate?)
    puts
    puts "#{people.count} new #{"person".pluralize(people.count)}"
    puts "#{companies.count} new #{"company".pluralize(companies.count)}"
    puts "#{new_members.size} new #{"member".pluralize(new_members.size)} total"
    puts
    estimate = MembershipPlan.projected_monthly_revenue(Membership.prepaid)
    dollars = ActiveSupport::NumberHelper.number_to_currency(estimate/100)
    puts "Projected monthly income is #{dollars} per month."
  end
end
