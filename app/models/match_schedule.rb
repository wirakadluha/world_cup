class MatchSchedule < ActiveRecord::Base
  attr_accessible :away_team_id, :home_team_id, :score_away, :score_home, :start_at
end
