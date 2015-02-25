class Membership < ActiveRecord::Base
  enum kind: %i[individual corporate]

  def full_name
    case kind
    when "individual"
      "an individual member"
    when "corporate"
      "a corporate member"
    else
      "a member"
    end
  end

  def status
    if expires_at.nil?
      "pending"
    elsif expires_at > Time.now
      "active"
    else
      "expired"
    end
  end

end
