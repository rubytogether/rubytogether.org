class HomeController < ApplicationController
  after_action :set_cache_control_headers

  def members
    set_surrogate_key_header("members")
    @corporate = Membership.corporate.named.active.pluck(:name, :description, :url)
    @individual = Membership.individual.named.active.pluck(:name)
  end

end
