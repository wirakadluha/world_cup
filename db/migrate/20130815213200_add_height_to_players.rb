class AddHeightToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :height, :string
  end
end
