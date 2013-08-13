class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.integer :age
      t.string :national
      t.string :slug
      t.timestamps
    end
      add_index :coaches, :slug, :unique => true
  end
end
