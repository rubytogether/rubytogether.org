class MembershipMailer < ApplicationMailer

  def welcome(user, plan, token)
    @user, @plan, @token = user, plan, token
    mail to: user.email, subject: welcome_subject(plan)
  end

private

  def welcome_subject(plan)
    if plan == "friend"
      "Thanks from Ruby Together"
    else
      "Welcome to Ruby Together"
    end
  end

end
