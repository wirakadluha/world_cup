class AddBallPositionTeam2ToScores < ActiveRecord::Migration
  def change
    add_column :scores, :ball_position_team2, :string
  end
end
