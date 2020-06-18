class AddPlanAmountToMemberships < ActiveRecord::Migration[6.0]
  def change
    add_column :memberships, :amount, :integer
  end
end
