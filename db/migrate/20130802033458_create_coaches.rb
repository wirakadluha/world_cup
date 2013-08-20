class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.integer :age
      t.string :national
      t.string :slug
      t.timestamps
    end
  end
end
