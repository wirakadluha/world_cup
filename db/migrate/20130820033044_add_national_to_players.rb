class AddNationalToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :national, :string
  end
end
