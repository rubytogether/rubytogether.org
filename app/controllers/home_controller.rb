class HomeController < ApplicationController
  after_action :set_cache_control_headers

  def index
    @companies = {
      "Basecamp" => "http://basecamp.com",
      "Stripe" => "http://stripe.com",
      "Travis CI" => "https://travis-ci.com",
      "Airbnb" => "http://airbnb.com",
      "Yammer" => "http://yammer.com",
      "GitLab" => "http://gitlab.com",
      "Kickstarter" => "http://kickstarter.com",
      "Square" => "http://square.com",
    }.sort_by { rand }
    @individuals = Membership.individual.named.order('random()').limit(5).active.pluck(:name)
  end

  def members
    set_surrogate_key_header("members")
    @featured_companies = Membership.featured_companies.named.active.order(:created_at).
      pluck(:name, :description, :url)
    @other_companies = Membership.nonfeatured_companies.named.active.order(:created_at).pluck(:name, :url)
    @individual = Membership.individual.named.active.order(:created_at).pluck(:name)
    @individual_count = Membership.individual.count
  end

end
