namespace :delinquents do
  desc "Email delinquent users (that haven't already been told) to let them know they are delinquent"
  task :send_email do
    require_relative "../../config/initializers/stripe"
    delinquent_users = User.delinquent.never_notified_of_delinquency

    delinquent_users.each do |user|
      PaymentMailer.delinquent(user).deliver_later
    end
  end
end
