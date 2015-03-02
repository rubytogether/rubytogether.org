class MembershipMailer < ApplicationMailer
  # Subjects are in en.yml under `en.membership_mailer`

  def welcome(user)
    mail to: user.email
  end

  def goodbye(user)
    mail to: user.email
  end

  def problem(user)
    mail to: user.email
  end

end
