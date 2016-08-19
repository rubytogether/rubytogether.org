class AddDelinquentNotificationSentAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :delinquent_notification_sent_at, :datetime
  end
end
