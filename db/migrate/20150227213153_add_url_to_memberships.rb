class AddUrlToMemberships < ActiveRecord::Migration
  def change
    add_column :memberships, :url, :string
  end
end
