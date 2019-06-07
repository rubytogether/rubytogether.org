class HomeController < ApplicationController
  after_action :set_cache_control_headers

  def index
    @developers = Membership.developer.named.active.order('random()').limit(3).pluck(:name)
    @companies = [
      Membership.plan(:ruby).named.active.order('random()').limit(2).pluck(:name, :url),
      Membership.plan(:sapphire).named.active.order('random()').limit(1).pluck(:name, :url)
    ].flatten(1)
  end

  def members
    set_surrogate_key_header("members")
    @featured_levels = levels_for(Membership.featured_companies.named.active.order(:created_at))
    @other_levels = levels_for(Membership.nonfeatured_companies.named.active.order(:created_at))
    @developers = Membership.developer.named.active.order(:created_at).pluck(:name)
    @developer_count = Membership.developer.active.count
  end

  def developers
    @developer_levels = MembershipProduct.developer_ids.map do |id|
      [id, MembershipPlan.monthly(id).dollar_amount]
    end.to_h
  end

  def example_proposal
    render layout: "application"
  end

private

  def levels_for(companies)
    levels = companies.all.group_by{|c| c.level.to_sym }.
      sort_by{|k,v| MembershipProduct.sorted_ids.index(k) }
    levels.reverse.map do |plan_id, companies|
      [MembershipProduct[plan_id].shortname, companies.map{|c| [c.name, c.url, c.description] }]
    end
  end

end
