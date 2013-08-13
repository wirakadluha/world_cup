class MatchSchedule < ActiveRecord::Base
  # extend FriendlyId
  # friendly_id :home_team_id, use: :slugged 
  attr_accessible :away_team_id, :home_team_id,:start_at
  belongs_to :away_team, class_name: 'Team', foreign_key: :away_team_id
  
  belongs_to :home_team, class_name: 'Team', foreign_key: :home_team_id
  acts_as_taggable
end
