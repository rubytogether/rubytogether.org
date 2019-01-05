class AddCorporateMemberFields < ActiveRecord::Migration[4.2]
  def change
    add_column :memberships, :twitter, :string
    add_column :memberships, :contact_name, :string
    add_column :memberships, :contact_phone, :string
    add_column :memberships, :logo_url, :string
  end
end