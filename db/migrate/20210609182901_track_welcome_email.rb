class TrackWelcomeEmail < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :welcomed_at, :timestamp
  end
end
