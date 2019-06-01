class MembershipMailer < ApplicationMailer

  def welcome(user, plan, token)
    @user, @plan, @token = user, plan, token
    mail to: user.email, subject: "Welcome to Ruby Together"
  end

end
