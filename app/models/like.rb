class Like < ApplicationRecord
  
  validates :photo_id, presence: true
  
  validates :user_id, presence: true
  validates :user_id, uniqueness: {
    scope: :photo_id,
    message: "You already liked this picture!"
    }
  
  belongs_to :photo
  belongs_to :user
    
end
