class HomeController < ApplicationController
  after_action :set_cache_control_headers

  def index
    @individuals = Membership.individual.named.active.order('random()').limit(3).pluck(:name)
    @companies = [
      Membership.plan(:ruby).named.active.order(:created_at).pluck(:name, :url),
      Membership.plan(:sapphire).named.active.order(:created_at).pluck(:name, :url),
      Membership.featured_companies.named.active.order('random()').limit(2).pluck(:name, :url)
    ].flatten(1)
  end

  def members
    set_surrogate_key_header("members")
    @featured_levels = levels_for(Membership.featured_companies.named.active.order(:created_at))
    @other_levels = levels_for(Membership.nonfeatured_companies.named.active.order(:created_at))
    @individual = Membership.individual.named.active.order(:created_at).pluck(:name)
    @individual_count = Membership.individual.active.count
  end

private

  def levels_for(companies)
    levels = companies.all.group_by{|c| c.kind.to_sym }.sort_by{|k,v| MembershipPlan.ids.index(k) }
    levels.reverse.map do |plan_id, companies|
      [MembershipPlan[plan_id].shortname, companies.map{|c| [c.name, c.url, c.description] }]
    end
  end

end
