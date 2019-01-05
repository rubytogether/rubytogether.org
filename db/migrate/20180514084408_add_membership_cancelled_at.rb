class AddMembershipCancelledAt < ActiveRecord::Migration[4.2]
  def change
    add_column :memberships, :cancelled_at, :timestamp
  end
end
