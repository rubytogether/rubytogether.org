class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :trackable, :validatable

  has_one :membership

  scope :live_login_token, -> { where("login_token_created_at > ?", Time.now) }
  scope :with_login_token, -> (token) { live_login_token.where(login_token: token) }

  after_destroy :delete_stripe_customer

  def generate_reset_password_token!
    set_reset_password_token
  end

private

  # Normally this method requires a password all the time. In this app,
  # we want the password to be optional at signup, but never removable.
  def password_required?
    !password.nil?
  end

  def delete_stripe_customer
    Stripe::Customer.retrieve(stripe_id).delete
  end

end
