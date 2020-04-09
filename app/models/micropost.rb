class Micropost < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :user_id
  
  validates :content, presence: true, length: { maximum: 255 }
end
