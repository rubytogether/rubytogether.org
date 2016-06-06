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
    estimate = MonthlyRevenue.projected(
      MembershipPlan.subscriber_counts,
      Membership.prepaid
    )
    dollars = ActiveSupport::NumberHelper.number_to_currency(estimate/100)
    puts "Projected monthly income is #{dollars} per month."
  end

  desc "Post expiring annual memberships to Slack."
  task :expiring_annual_memberships => [:environment] do |t, args|
    expiring_memberships = Membership.on_trial.where(
      "expires_at <= ?", 1.month.from_now
    ).order("expires_at ASC")

    if expiring_memberships.any?
      message = "It appears that the following subscriptions are going to expire soon: \n"

      expiring_memberships.each do |membership|
        message << "*#{membership.name}* "
        message << "https://dashboard.stripe.com/customers/#{membership.user.stripe_id}\n"
        message << "Expires at: #{membership.expires_at.strftime("%A, %d %B %Y")}\n\n"
      end

      Slack.say(message,
        username: "Expiring Annual Subscribers",
        channel: "#stripe",
        icon_emoji: ":chart_with_downwards_trend:"
      )
    end
  end

  desc "Post recently expired memberships (last day by default) to Slack."
  task :expired_memberships, [:expires_at] => [:environment] do |t, args|
    require 'action_view/helpers'
    include ActionView::Helpers::DateHelper
    expiries = Membership.where(
      "expires_at BETWEEN ? AND ?", expires_at ||= 1.day.ago, Time.now
    ).select { |membership| membership.user.stripe_customer.subscriptions.any? }.map do |member|
      "#{member.user.email}: #{time_ago_in_words(member.expires_at)}"
    end

    if expiries.any?
      Slack.say(expiries.join("\n"),
        username: "Recently Expired Memberships",
        channel: "#stripe",
        icon_emoji: ":chart_with_downwards_trend:"
      )
    end
  end
end
