class AddBirthDateToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :birth_date, :string
  end
end
