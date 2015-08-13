require "membership_plan"

class Membership < ActiveRecord::Base
  enum kind: MembershipPlan.ids

  def self.kinds_for(*kinds)
    kinds.map{|k| Membership.kinds[k] }
  end

  scope :active, -> { where("expires_at > ?", Time.now) }
  scope :named,  -> { where("name IS NOT NULL") }

  scope :developer, -> { where(kind: Membership.kinds_for(:individual)) }
  scope :company, -> { where("kind NOT IN (?)", Membership.kinds_for(:individual, :friend)) }

  scope :featured_companies, -> {
    where(kind: Membership.kinds_for(:corporate_emerald, :corporate_sapphire, :corporate_ruby))
  }
  scope :nonfeatured_companies, -> { where(kind: Membership.kinds_for(:corporate_topaz)) }

  belongs_to :user

  before_save :normalize_url

  def dollar_amount
    amount / 100
  end

  def plan
    MembershipPlan[kind.to_sym]
  end

  def shortname
    plan.shortname
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
  
  def corporate?
    kind.start_with?("corporate")
  end

private

  def normalize_url
    return unless url
    self.url = "http://#{url}" unless url.match(/^https?\:\/\//)
  end

end
