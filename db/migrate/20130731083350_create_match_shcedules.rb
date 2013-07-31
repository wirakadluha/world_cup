class CreateMatchShcedules < ActiveRecord::Migration
  def change
    create_table :match_shcedules do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.datetime :start_at
      t.integer :score_home
      t.integer :score_away

      t.timestamps
    end
  end
end
