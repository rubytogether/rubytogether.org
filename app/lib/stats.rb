class Stats
  def self.debug(message)
    puts(message) if ENV["DEBUG"]
  end

  def self.since(last_date)
    message = "\n"
    new_members = Membership.active.since(last_date)
    groups = new_members.group_by(&:kind)
    plans = MembershipPlan.all.values.sort_by(&:amount)

    plans.select{|plan| groups[plan.id] }.
      map{|plan| [plan, groups[plan.id]] }.
      each do |plan, group|
        message << "#{group.size} new #{plan.shortname} #{"member".pluralize(group.size)}"
        names = group.map{|m| [m.name, m.url].compact.join(" ") if m.name }.compact
        message << " including\n - #{names.join("\n - ")}" if names.any?
        message << "\n"
      end

    companies, people = new_members.partition(&:corporate?)
    message << "\n"
    message << "#{people.count} new #{"developer".pluralize(people.count)}\n"
    message << "#{companies.count} new #{"company".pluralize(companies.count)}\n"
    message << "#{new_members.size} new #{"member".pluralize(new_members.size)} total\n"
    message << "\n"

    counts = Membership.active.group(:kind).count.map do |id,c|
      [MembershipPlan.all[id.to_sym], c]
    end.to_h
    corp, dev = counts.partition{|s,c| s.id.start_with?("corporate") }
    message << "#{corp.map(&:last).inject(:+)} #{"company".pluralize(companies.count)} ("
    message << corp.sort_by{|s,c| -s.amount}.map{|s,c| "#{c} #{s.shortname}" }.join(", ")
    message << ")\n"

    message << "#{dev.map(&:last).inject(:+)} #{"developer".pluralize(people.count)} ("
    message << dev.sort_by{|s,c| -s.amount}.map{|s,c| "#{c} #{s.shortname}" }.join(", ")
    message << ")\n"
  end

  def self.expiring_annual_memberships
    # no need to look at memberships that are already expired.
    expiring_memberships = Membership.on_trial.where(
      "expires_at BETWEEN ? AND ?", Time.now, 90.days.from_now
    ).order("expires_at ASC")

    if expiring_memberships.any?
      message = "It appears that the following subscriptions are going to expire soon: \n"

      expiring_memberships.each do |membership|
        message << "*#{membership.name}* "
        message << "https://dashboard.stripe.com/customers/#{membership.user.stripe_id}\n"
        message << "Expires at: #{membership.expires_at.strftime("%A, %d %B %Y")}\n\n"
      end

      message
    end
  end

  def self.expired_memberships(expires_at)
    Membership.includes(:user).where(
      "expires_at BETWEEN ? AND ?", expires_at, Time.now
    ).select(&:has_stripe_subscriptions?).map do |membership|
      "#{membership.user_email} -> https://dashboard.stripe.com/customers/#{membership.user.stripe_id}"
    end.join("\n")
  end

  def self.monthly_revenue_projection
    subscriber_counts = MembershipPlan.subscriber_counts
    message = subscriber_counts.map do |plan, count|
      "#{count} #{plan.name.pluralize(count)}"
    end.to_sentence
    estimate = MonthlyRevenue.projected(subscriber_counts, Membership.prepaid)
    dollars = ActiveSupport::NumberHelper.number_to_currency(estimate/100)
    message += ". Projected revenue now #{dollars} per month."
  end
end
