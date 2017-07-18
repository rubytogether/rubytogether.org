module Intercom

  def self.key
    ENV.fetch("INTERCOM_KEY")
  end

  def self.secret_key
    ENV.fetch("INTERCOM_SECRET_KEY")
  end

  def self.settings(user = nil)
    user_settings(user).merge(app_id: key)
  end

  def self.user_settings(user = nil)
    return {} unless user

    {
      email: user.email,
      created_at: user.created_at.to_i,
      name: user.try(:membership).try(:name),
      user_hash: user_hash(user)
    }
  end

  def self.user_hash(user)
    OpenSSL::HMAC.hexdigest('sha256', secret_key, current_user.email)
  end

end
