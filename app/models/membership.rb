class Membership < ActiveRecord::Base
  enum kind: %i[individual corporate friend]

  scope :active, -> { where("expires_at > ?", Time.now) }
  scope :named,  -> { where("name IS NOT NULL") }

  belongs_to :user

  before_save :normalize_url

  def dollar_amount
    amount / 100
  end

  def plan
    MembershipPlan[kind.to_sym]
  end

  def amount
    plan.amount
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

private

  def normalize_url
    return unless url
    self.url = "http://#{url}" unless url.match(/^https?\:\/\//)
  end

end
