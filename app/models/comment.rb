class Comment < ActiveRecord::Base
  attr_accessible :commentable_id, :commentable_type, :message, :commentable
  belongs_to :user
  belongs_to :commentable, polymorphic: true
end
