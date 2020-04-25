class Micropost < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :user_id
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :reverses_of_favorite, class_name: 'Favorite'
  has_many :favorite_users, through: :reverses_of_favorite, source: :user  #これは関係性を書いているだけで不要？
end
