class Team < ActiveRecord::Base
	  extend FriendlyId
  friendly_id :name, use: :slugged 

  validates :name_kode, length: { maximum: 3 }
 
	validates :name, :name_kode, presence:true, uniqueness: true
	
  attr_accessible :name, :name_kode, :match_schedule_id,:coach_id
  
  belongs_to :matchschedule
  belongs_to :coach
  
  has_many :players

   belongs_to :score
  acts_as_taggable

  has_many :comments, as: :commentable

 
end
