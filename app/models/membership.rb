class Membership < ActiveRecord::Base
  enum kind: %i[individual corporate]

  scope :active, -> { where("expires_at > ?", Time.now) }
  scope :named,  -> { where("name IS NOT NULL") }

  belongs_to :user

  def dollar_amount
    amount / 100
  end

  def amount
    MembershipPlan[kind.to_sym].amount
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

  def active?
    status == "active"
  end

end
