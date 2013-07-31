class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :name_kode

      t.string :first_name, :null => false,  :default =>""
      t.string :last_name,  :null => false,  :default =>""
      t.string :slug

      t.timestamps
    end
        add_index :names, :slug, :unique => true
  end
end
