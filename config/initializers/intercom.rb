module Intercom

  def self.key
    ENV.fetch("INTERCOM_KEY")
  end

  def self.settings(user = nil)
    settings = {app_id: key}

    if user
      settings[:email] = user.email
      settings[:created_at] = user.created_at.to_i
      settings[:name] = user.try(:membership).try(:name)
    end

    settings
  end

end
