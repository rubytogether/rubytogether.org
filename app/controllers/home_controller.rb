class HomeController < ApplicationController
  after_action :set_cache_control_headers

  def members
    set_surrogate_key_header("members")
    @corporate = Membership.corporate.named.active.order(:created_at).
      pluck(:name, :description, :url)
    @individual = Membership.individual.named.active.order(:created_at).pluck(:name)
  end

end
