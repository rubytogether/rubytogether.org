class AddTimestampsToMemberships < ActiveRecord::Migration
  def change
    add_column :memberships, :created_at, :timestamp
    add_column :memberships, :updated_at, :timestamp

    Membership.where(created_at: nil).find_each do |m|
      next unless m.user
      m.update(created_at: m.user.created_at, updated_at: m.user.updated_at)
    end
  end
end