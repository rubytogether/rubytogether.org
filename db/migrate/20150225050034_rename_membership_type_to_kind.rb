class RenameMembershipTypeToKind < ActiveRecord::Migration[4.2]
  def change
    rename_column :memberships, :type, :kind
  end
end
