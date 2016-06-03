class HomeController < ApplicationController
  after_action :set_cache_control_headers

  def index
    @individuals = Membership.individual.named.order('random()').limit(3).active.pluck(:name)
    @companies = featured_companies.order('random()').limit(5).pluck(:name, :url)
  end

  def members
    set_surrogate_key_header("members")
    @featured_companies = featured_companies.order(:created_at).
      pluck(:name, :description, :url)
    @other_companies = Membership.nonfeatured_companies.named.active.order(:created_at).pluck(:name, :url)
    @individual = Membership.individual.named.active.order(:created_at).pluck(:name)
    @individual_count = Membership.individual.active.count
  end

  private
  def featured_companies
    Membership.featured_companies.named.active
  end

end
