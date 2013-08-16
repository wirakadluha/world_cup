class AddMarketValueToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :market_value, :string
  end
end
