class Player < ActiveRecord::Base
	extend FriendlyId
  friendly_id :name, use: :slugged 

	validates :name, :number_player, presence:true

  attr_accessible :name, :number_player, :position, :image, :team_id, :age, :height, 
  :weight, 
  :foot, 
  :market_value, 
  :birth_date, 
  :birth_place, 
  :national, 
  :player_agent
 belongs_to :team
 # has_one :team
  
  has_many :player_positions
  acts_as_taggable
  mount_uploader :image, PlayerImageUploader

  has_many :comments, as: :commentable

end



