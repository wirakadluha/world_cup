class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :name_kode
      t.string :slug
      t.timestamps
    end
        add_index :teams, :slug, :unique => true
  end
end
