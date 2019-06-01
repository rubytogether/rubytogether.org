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

end
