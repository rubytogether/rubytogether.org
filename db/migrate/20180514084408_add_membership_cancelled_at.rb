class AddMembershipCancelledAt < ActiveRecord::Migration
  def change
    add_column :memberships, :cancelled_at, :timestamp
  end
end
