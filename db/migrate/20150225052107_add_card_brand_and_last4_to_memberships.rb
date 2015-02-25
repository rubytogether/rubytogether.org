class AddCardBrandAndLast4ToMemberships < ActiveRecord::Migration
  def change
    add_column :memberships, :card_brand, :string
    add_column :memberships, :card_last4, :string
  end
end
