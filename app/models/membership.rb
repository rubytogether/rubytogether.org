class Membership < ActiveRecord::Base
  enum type: %i[individual corporate]

  def active?
    expires_at && expires_at > Time.now
  end

end
