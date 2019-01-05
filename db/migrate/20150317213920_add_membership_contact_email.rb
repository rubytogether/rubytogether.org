class AddMembershipContactEmail < ActiveRecord::Migration[4.2]
  def change
    add_column :memberships, :contact_email, :string
  end
end
