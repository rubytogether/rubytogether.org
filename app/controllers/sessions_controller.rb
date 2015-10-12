class SessionsController < Devise::SessionsController
  layout "memberships"
  after_action :set_cache_control_headers
end
