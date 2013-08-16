class AddPlayerAgentToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :player_agent, :string
  end
end
