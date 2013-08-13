class Player_position < ActiveRecord::Base
extend FriendlyId
  friendly_id :name, use: :slugged 

	validates :name, :back_number, :national, presence:true, uniqueness: true

  attr_accessible :back_number, :name, :national, :position
  belongs_to :player
  acts_as_taggable
end
