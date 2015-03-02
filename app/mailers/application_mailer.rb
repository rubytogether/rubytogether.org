class ApplicationMailer < ActionMailer::Base
  default from: Devise.mailer_sender
  layout "mailer"
end
