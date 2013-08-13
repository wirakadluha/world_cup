class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number_player
      t.string :slug
      t.integer :team_id
      t.timestamps
    
    end
     add_index :players, :slug, :unique => true
  end
end
