class AddAdminToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :boolean, null: false, default: false

    emails = ["andre@arko.net", "andre@rubytogether.org"]
    User.where(email: emails).update(admin: true)
  end
end
