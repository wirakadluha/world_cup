class AddNameScoringGoalsToScores < ActiveRecord::Migration
  def change
    add_column :scores, :name_scoring_goals, :string
  end
end
