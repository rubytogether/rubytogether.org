class Stats
  def initialize(slack: true)
    @slack = slack && (Rails.env.test? || Slack.team.present?)
  end

  def since(last_date)
    new_members = Membership.since(last_date)
    groups = new_members.group_by(&:kind)
    plans = MembershipPlan.all.values.sort_by(&:amount)

    plans.select{|plan| groups[plan.id] }.
      map{|plan| [plan, groups[plan.id]] }.
      each do |plan, group|
        puts "#{group.size} new #{plan.shortname} #{"member".pluralize(group.size)}: #{group.map(&:name).compact.to_sentence}"
      end

    companies, people = new_members.partition(&:corporate?)
    message = "\n"
    message << "#{people.count} new #{"person".pluralize(people.count)}\n"
    message << "#{companies.count} new #{"company".pluralize(companies.count)}\n"
    message << "#{new_members.size} new #{"member".pluralize(new_members.size)} total\n"
    message << "\n"
    estimate = MonthlyRevenue.projected(
      MembershipPlan.subscriber_counts,
      Membership.prepaid
    )
    dollars = ActiveSupport::NumberHelper.number_to_currency(estimate/100)
    message << "Projected monthly income is #{dollars} per month."

    say(message,
      username: "Memberships Since #{last_data}",
      channel: "#stripe",
      icon_emoji: ":chart_with_upwards_trend:"
    )
  end

  def expiring_annual_memberships
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

      say(message,
        username: "Expiring Annual Subscribers",
        channel: "#stripe",
        icon_emoji: ":chart_with_downwards_trend:"
      )
    end
  end

  def expired_memberships(expires_at)
    require 'action_view/helpers'
    include ActionView::Helpers::DateHelper
    expiries = Membership.where(
      "expires_at BETWEEN ? AND ?", expires_at, Time.now
    ).select { |membership| membership.user.stripe_customer.subscriptions.any? }.map do |member|
      "#{member.user.email}: #{time_ago_in_words(member.expires_at)}"
    end

    if expiries.any?
      say(expiries.join("\n"),
        username: "Recently Expired Memberships",
        channel: "#stripe",
        icon_emoji: ":chart_with_downwards_trend:"
      )
    end
  end

  def monthly_revenue_projection
    subscriber_counts = MembershipPlan.subscriber_counts
    message = subscriber_counts.map do |plan, count|
      "#{count} #{plan.name.pluralize(count)}"
    end.to_sentence
    estimate = MonthlyRevenue.projected(subscriber_counts, Membership.prepaid)
    dollars = ActiveSupport::NumberHelper.number_to_currency(estimate/100)
    message << ". Projected revenue now #{dollars} per month."

    say(message,
      username: "Subscribers",
      channel: "#stripe",
      icon_emoji: ":chart_with_upwards_trend:"
    )
  end

  private

  def say(message, options = {})
    if @slack
      Slack.say(message, options)
    else
      puts message
    end
  end
end
