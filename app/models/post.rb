class Post < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 500 }
  
  has_many :photos
end
