class CreatePlayer_positions < ActiveRecord::Migration
  def change
    create_table :player_positions do |t|
      t.string :name
      t.integer :back_number
      t.string :position
      t.string :national
      t.string :slug

      t.timestamps
    end
      add_index :teams, :slug, :unique => true
  end
end
