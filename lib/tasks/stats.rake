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
end
