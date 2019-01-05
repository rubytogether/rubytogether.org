class AddDelinquentNotificationSentAtToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :delinquent_notification_sent_at, :datetime
  end
end
