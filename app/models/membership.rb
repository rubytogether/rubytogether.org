require "membership_plan"

class Membership < ActiveRecord::Base

  delegate :email, to: :user, allow_nil: true, prefix: true

  def has_stripe_subscriptions?
    user&.stripe_customer&.subscriptions&.any?
  end

  scope :active, -> { where("expires_at > ?", Time.now) }
  scope :expired, -> { where("expires_at < ?", Time.now) }
  scope :cancelled, -> { where("cancelled_at IS NOT NULL") }
  scope :named,  -> { where("name IS NOT NULL") }
  scope :since, -> (time) { where("created_at > ?", time) }
  scope :prepaid, -> { where("expires_at > ?", 1.month.from_now) }

  scope :individual, -> { where(level: MembershipProduct.individual_ids) }
  scope :company, -> { where(level: MembershipProduct.company_ids) }

  scope :featured_companies, -> { where(level: MembershipProduct.featured_ids) }
  scope :nonfeatured_companies, -> { where(level: MembershipProduct.nonfeatured_ids) }
  scope :plan, -> (plan) { where(level: "corporate_#{plan}") }

  belongs_to :user

  before_save :normalize_url

  def dollar_amount
    plan.dollar_amount
  end

  def plan
    MembershipPlan.monthly(level.to_sym)
  end

  def shortname
    plan.product.shortname
  end

  def amount
    plan.amount
  end

  def status
    if cancelled_at
      "cancelled"
    elsif expires_at.nil?
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

  def cancelled?
    !cancelled_at.nil?
  end

  def corporate?
    level.start_with?("corporate")
  end

private

  def normalize_url
    return unless url
    self.url = "http://#{url}" unless url.match(/^https?\:\/\//)
  end

end
