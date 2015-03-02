# Preview all emails at http://localhost:3000/rails/mailers/membership_mailer
class MembershipMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/membership_mailer/welcome
  def welcome
    MembershipMailer.welcome
  end

  # Preview this email at http://localhost:3000/rails/mailers/membership_mailer/goodbye
  def goodbye
    MembershipMailer.goodbye
  end

  # Preview this email at http://localhost:3000/rails/mailers/membership_mailer/problem
  def problem
    MembershipMailer.problem
  end

end
