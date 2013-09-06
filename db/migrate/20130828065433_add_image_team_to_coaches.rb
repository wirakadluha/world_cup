class AddImageTeamToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :image_team, :string
  end
end
