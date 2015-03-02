# Preview all emails at http://localhost:3000/rails/mailers/devise
class DevisePreview < ActionMailer::Preview
  def reset_password
    Devise::Mailer.reset_password_instructions(User.first, "abc123")
  end
end