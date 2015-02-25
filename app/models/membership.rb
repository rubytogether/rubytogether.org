class Membership < ActiveRecord::Base
  enum kind: %i[individual corporate]

  def active?
    expires_at && expires_at > Time.now
  end

end
