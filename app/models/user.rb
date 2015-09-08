class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :trackable, :validatable

  has_one :membership, dependent: :destroy

  scope :live_login_token, -> { where("login_token_created_at > ?", Time.now) }
  scope :with_login_token, -> (token) { live_login_token.where(login_token: token) }

  after_destroy :delete_stripe_customer

  attr_writer :stripe_customer

  def generate_reset_password_token!
    set_reset_password_token
  end

  def stripe_customer
    return nil if stripe_id.nil?
    @stripe_customer ||= Stripe::Customer.retrieve(stripe_id)
  end

private

  # Normally this method requires a password all the time. In this app,
  # we want the password to be optional at signup, but never removable.
  def password_required?
    !password.nil?
  end

  def delete_stripe_customer
    customer = stripe_id && Stripe::Customer.retrieve(stripe_id)
    customer && customer.delete
  rescue Stripe::InvalidRequestError => e
    Rails.logger.warn "Deleting stripe customer #{stripe_id} raised #{e}: #{e.message}"
  end

end
