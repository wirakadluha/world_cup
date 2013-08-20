class CreateMatchSchedules < ActiveRecord::Migration
  def change
    create_table :match_schedules do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.datetime :start_at
      t.string :slug
      t.timestamps
    end
    add_index :match_schedules , :slug, :unique => true
  end
end
