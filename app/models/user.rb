class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :username, presence: true
  validates :username, uniqueness: {
    message: "Username is already in use!"
    
  }
  
  has_many :photos, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  has_many :liked_photos, :through => :likes, :source => :photo
end
