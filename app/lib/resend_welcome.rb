class ResendWelcome

  def self.run(*args)
    new.run(*args)
  end

  def run(user)
    plan = user.membership.kind
    token = user.generate_reset_password_token!
    MembershipMailer.welcome(user, plan, token).deliver_later
  end

end
