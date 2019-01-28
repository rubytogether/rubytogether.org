class CreateMemberships < ActiveRecord::Migration[4.2]
  def change
    create_table :memberships do |t|
      t.belongs_to :user
      t.string :name
      t.string :description
      t.integer :type, default: 0
      t.timestamp :expires_at
    end

    remove_column :users, :member_until
  end
end
