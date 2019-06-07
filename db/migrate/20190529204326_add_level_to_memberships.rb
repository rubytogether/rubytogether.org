class AddLevelToMemberships < ActiveRecord::Migration[5.2]
  IDS = [
    :individual,
    :corporate_emerald,
    :friend,
    :corporate_topaz,
    :corporate_sapphire,
    :corporate_ruby,
    :corporate_jade,
    :corporate_onyx,
  ]

  class Membership < ActiveRecord::Base
    enum kind: IDS
  end

  def up
    add_column :memberships, :level, :string

    IDS.map do |id|
      Membership.where(kind: id).update_all(level: id.to_s)
    end
  end

  def down
    remove_column :memberships, :level
  end
end
