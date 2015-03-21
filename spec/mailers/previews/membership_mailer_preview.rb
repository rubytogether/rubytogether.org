# Preview all emails at http://localhost:3000/rails/mailers/membership_mailer
class MembershipMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/membership_mailer/welcome
  def welcome
    user = User.first
    token = user.generate_reset_password_token!
    MembershipMailer.welcome(user, "individual", token)
  end

  def welcome_friend
    user = User.first
    token = user.generate_reset_password_token!
    MembershipMailer.welcome(user, "friend", token)
  end

  # Preview this email at http://localhost:3000/rails/mailers/membership_mailer/goodbye
  def goodbye
    MembershipMailer.goodbye(User.first)
  end

  # Preview this email at http://localhost:3000/rails/mailers/membership_mailer/problem
  def problem
    MembershipMailer.problem(User.first)
  end

end
