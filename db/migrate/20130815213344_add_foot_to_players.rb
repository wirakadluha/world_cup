class AddFootToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :foot, :string
  end
end
