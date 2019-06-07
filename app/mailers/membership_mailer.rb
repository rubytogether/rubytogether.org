class MembershipMailer < ApplicationMailer

  def welcome(user, token)
    @user, @token = user, token
    mail to: user.email, subject: "Welcome to Ruby Together"
  end

end
