class Team < ActiveRecord::Base
	  extend FriendlyId
  friendly_id :name, use: :slugged 

validates :name_kode, length: { maximum: 3 }
 
	validates :name, :name_kode, presence:true, uniqueness: true
	
  attr_accessible :name, :name_kode
  #has_many :player
  belongs_to :matchschedule
  belongs_to :coach
  #belongs_to :player

  has_one :player

   belongs_to :score
  acts_as_taggable

 
end
