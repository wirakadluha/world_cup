class Team < ActiveRecord::Base
	  extend FriendlyId
  friendly_id :name, use: :sluget 

	validates :name, :name_kode, presence:true, uniqueness: true
	validates :name_kode, length: { minimum: 3 }
  attr_accessible :name, :name_kode
 
 def name
    [:frist_name, :last_name]
end
end
