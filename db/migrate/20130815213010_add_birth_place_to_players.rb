class AddBirthPlaceToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :birth_place, :string
  end
end
