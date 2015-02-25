class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :rememberable,
    :trackable, :validatable


private

  # Normally this method requires a password all the time. In this app,
  # we want the password to be optional at signup, but never removable.
  def password_required?
    !password.nil?
  end

end
