class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  extend FriendlyId
  friendly_id :name, use: :slugged 

   validates :password, :password_confirmation, length: { in: 6..20 }
  #validates_format_of :name, with: /^[A-Za-z0-9]+$/i
   validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
   validates_uniqueness_of :email

   devise :database_authenticatable, :registerable, :confirmable, 
        #:lockable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable
  attr_accessible :email, :password,:remember_me, :password_confirmation, :first_name, :last_name
  # attr_accessible :title, :body

  has_many :comments
  def name
    "#{first_name} #{last_name}"
end
end
