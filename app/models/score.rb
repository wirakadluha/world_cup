class Score < ActiveRecord::Base
	 extend FriendlyId
  friendly_id :name_team1, use: :slugged


	validates :name_team1, :name_team2,:score_team1, :score_team2, presence:true

  attr_accessible :name_team1, :name_team2, :score_team1, :score_team2, :date


 has_many :teams

   acts_as_taggable

end
