class PaymentMailer < ApplicationMailer

  def failure(user)
    @name = user.name.presence || "there" # "Hi Alice," or "Hi there,"
    @token = user.generate_reset_password_token!
    mail to: user.email, subject: "Your payment to Ruby Together failed."
  end

  def delinquent(user)
    @name = user.name.presence || "there" # "Hi Alice," or "Hi there,"
    @token = user.generate_reset_password_token!
    user.update_attribute :delinquent_notification_sent_at, Time.now
    mail to: user.email, subject: "Reactivate your Ruby Together subscription?"
  end

end
