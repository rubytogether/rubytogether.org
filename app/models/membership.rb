require "membership_plan"

class Membership < ActiveRecord::Base
  enum kind: MembershipPlan.ids

  def self.kinds_for(*kinds)
    kinds.flatten.map{|k| Membership.kinds[k] }
  end

  # Find all memberships where the user is on trial, i.e. annual members.
  def self.on_trial
    where user_id: User.on_trial.pluck(:id)
  end

  delegate :email, to: :user, allow_nil: true, prefix: true

  def has_stripe_subscriptions?
    user && user.stripe_customer.subscriptions.any?
  end

  scope :active, -> { where("expires_at > ?", Time.now) }
  scope :expired, -> { where("expires_at < ?", Time.now) }
  scope :cancelled, -> { where("cancelled_at IS NOT NULL") }
  scope :named,  -> { where("name IS NOT NULL") }
  scope :since, -> (time) { where("created_at > ?", time) }
  scope :prepaid, -> { where("expires_at > ?", 1.month.from_now) }

  scope :developer, -> { where(kind: kinds_for(:individual)) }
  scope :company, -> { where(kind: kinds_for(MembershipPlan.company_ids)) }

  scope :featured_companies, -> {
    where(kind: kinds_for(MembershipPlan.featured_ids)) }
  scope :nonfeatured_companies, -> {
    where(kind: kinds_for(MembershipPlan.nonfeatured_ids)) }
  scope :plan, -> (plan) { where(kind: kinds_for("corporate_#{plan}".to_sym)) }

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
    elsif cancelled_at
      "cancelled"
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
