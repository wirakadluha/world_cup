class Player < ActiveRecord::Base
	extend FriendlyId
  friendly_id :name, use: :slugged 

	validates :name, :number_player, presence:true

  attr_accessible :name, :number_player, :position
 belongs_to :team
 # has_one :team
  
  has_many :player_positions
  acts_as_taggable
end
