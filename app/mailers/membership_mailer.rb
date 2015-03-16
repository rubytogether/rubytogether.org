class MembershipMailer < ApplicationMailer
  # Subjects are in en.yml under `en.membership_mailer`

  def welcome(user, token)
    @user, @token = user, token
    mail to: user.email
  end

end
