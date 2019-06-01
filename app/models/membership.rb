require "membership_plan"

class Membership < ActiveRecord::Base
  # Find all memberships where the user is on trial, i.e. annual members.
  def self.on_trial
    where user_id: User.on_trial.pluck(:id)
  end

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

  scope :individual, -> { where(levels: MembershipPlan.individual_ids) }
  scope :company, -> { where(levels: MembershipPlan.company_ids) }

  scope :featured_companies, -> { where(level: MembershipProduct.featured_ids) }
  scope :nonfeatured_companies, -> { where(level: MembershipProduct.nonfeatured_ids) }
  scope :plan, -> (plan) { where(level: "corporate_#{plan}") }

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
    kind.start_with?("corporate")
  end

private

  def normalize_url
    return unless url
    self.url = "http://#{url}" unless url.match(/^https?\:\/\//)
  end

end
