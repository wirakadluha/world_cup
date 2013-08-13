class AddSlugToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :slug, :string
  end
end
