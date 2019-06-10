class AddIntervalToMemberships < ActiveRecord::Migration[5.2]
  def change
    add_column :memberships, :interval, :string, default: "month"
  end
end
