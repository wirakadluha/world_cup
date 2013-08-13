class AddSlugToPlayerPositions < ActiveRecord::Migration
  def change
    add_column :player_positions, :slug, :string
  end
end
