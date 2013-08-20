class Coach < ActiveRecord::Base
  
  extend FriendlyId
  friendly_id :name, use: :slugged 

  attr_accessible :age, :name, :national

  has_one :team
  acts_as_taggable

  has_many :comments, as: :commentable
end
