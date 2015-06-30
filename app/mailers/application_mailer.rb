class ApplicationMailer < ActionMailer::Base
  default from: Devise.mailer_sender
  helper :application
  layout "mailer"
end
