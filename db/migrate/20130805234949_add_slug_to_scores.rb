class AddSlugToScores < ActiveRecord::Migration
  def change
    add_column :scores, :slug, :string
  end
end
