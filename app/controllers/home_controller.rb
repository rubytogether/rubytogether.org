class HomeController < ApplicationController
  after_action :set_cache_control_headers

  def members
    set_surrogate_key_header("members")
    @featured_companies = Membership.featured_companies.named.active.order(:created_at).
      pluck(:name, :description, :url)
    @other_companies = Membership.nonfeatured_companies.named.active.order(:created_at).pluck(:name, :url)
    @individual = Membership.individual.named.active.order(:created_at).pluck(:name)
    @individual_count = Membership.individual.count
  end

end
