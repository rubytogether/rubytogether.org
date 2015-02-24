class AddMemberUntilToUsers < ActiveRecord::Migration
  def change
    add_column :users, :member_until, :timestamp
  end
end
