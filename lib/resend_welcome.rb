class ResendWelcome

  def self.run(*args)
    new.run(*args)
  end

  def run(user)
    token = user.generate_reset_password_token!
    MembershipMailer.welcome(user, user.membership.kind, token).deliver_later
  end

end
