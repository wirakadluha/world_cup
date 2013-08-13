class AddDateToScores < ActiveRecord::Migration
  def change
    add_column :scores, :date, :datetime
  end
end
