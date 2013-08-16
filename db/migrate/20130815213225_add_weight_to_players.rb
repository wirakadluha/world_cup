class AddWeightToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :weight, :string
  end
end
