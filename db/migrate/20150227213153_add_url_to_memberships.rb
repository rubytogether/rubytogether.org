class AddUrlToMemberships < ActiveRecord::Migration[4.2]
  def change
    add_column :memberships, :url, :string
  end
end
