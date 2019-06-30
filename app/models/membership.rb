# == Schema Information
#
# Table name: memberships
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  name          :string
#  description   :string
#  kind          :integer          default(0)
#  expires_at    :datetime
#  card_brand    :string
#  card_last4    :string
#  url           :string
#  twitter       :string
#  contact_name  :string
#  contact_phone :string
#  logo_url      :string
#  contact_email :string
#  created_at    :datetime
#  updated_at    :datetime
#  cancelled_at  :datetime
#  level         :string
#  interval      :string           default("month")
#

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

  scope :developer, -> { where(level: MembershipProduct.developer_ids) }
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
    MembershipPlan.send("#{interval}ly", level)
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
