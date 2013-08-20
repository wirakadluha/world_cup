class CreatePlayerPositions < ActiveRecord::Migration
  def change
    create_table :player_positions do |t|
      t.string :name
      t.integer :back_number
      t.string :position
      t.string :national
      t.string :slug

      t.timestamps
    end
  end
end
