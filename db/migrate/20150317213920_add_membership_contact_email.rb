class AddMembershipContactEmail < ActiveRecord::Migration
  def change
    add_column :memberships, :contact_email, :string
  end
end
