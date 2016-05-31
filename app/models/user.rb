class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :trackable, :validatable

  has_one :membership, dependent: :destroy

  scope :live_login_token, -> { where("login_token_created_at > ?", Time.now) }
  scope :with_login_token, -> (token) { live_login_token.where(login_token: token) }

  after_update :update_stripe_customer
  after_destroy :delete_stripe_customer

  attr_writer :stripe_customer

  # Return users that have a trial subscription, i.e. annual members.
  def self.on_trial
    where stripe_id: trial_stripe_subscriptions.map(&:customer)
  end

  # Finds all subscriptions inside Stripe that have the status 'trialing'.
  # This is better than Membership#prepaid, but it requires network activity.
  def self.trial_stripe_subscriptions
    Stripe::Subscription.list(limit: 50).auto_paging_each.select do |subscription|
      subscription.status == 'trialing'
    end
  end

  def generate_reset_password_token!
    set_reset_password_token
  end

  def stripe_customer
    return nil if stripe_id.nil?
    @stripe_customer ||= Stripe::Customer.retrieve(stripe_id)
  end

  delegate :name, to: :membership, allow_nil: true

private

  # Normally this method requires a password all the time. In this app,
  # we want the password to be optional at signup, but never removable.
  def password_required?
    !password.nil?
  end

  def update_stripe_customer
    return if stripe_customer.nil?
    if stripe_customer.email != email
      stripe_customer.email = email
      stripe_customer.save
    end
  end

  def delete_stripe_customer
    return if stripe_customer.nil?
    stripe_customer.delete
  rescue Stripe::InvalidRequestError => e
    Rails.logger.warn "Deleting stripe customer #{stripe_id} raised #{e}: #{e.message}"
  end

end
