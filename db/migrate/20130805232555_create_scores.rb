class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :name_team1
      t.string :name_team2
      t.integer :score_team1
      t.integer :score_team2
      t.string :slug
      t.timestamps
    end
    add_index :scores, :slug, :unique => true
  end
end
