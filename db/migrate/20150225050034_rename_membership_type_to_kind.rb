class RenameMembershipTypeToKind < ActiveRecord::Migration
  def change
    rename_column :memberships, :type, :kind
  end
end
