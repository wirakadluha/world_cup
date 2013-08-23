class AddImageTeamToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :image_team, :string
  end
end
