class Coach < ActiveRecord::Base
  
  extend FriendlyId
  friendly_id :name, use: :slugged 

  attr_accessible :age, :name, :national,:image_team, :image, :team_id

  has_one :team
  acts_as_taggable

  has_many :comments, as: :commentable

   mount_uploader :image, CoachImageUploader

  mount_uploader :image_team, CoachImageTeamUploader



end
