class AddBallPositionTeam1ToScores < ActiveRecord::Migration
  def change
    add_column :scores, :ball_position_team1, :string
  end
end
