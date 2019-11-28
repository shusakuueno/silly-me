class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :content, presence: true, length: { maximum: 255 }
  validate  :image_size
  
  has_many :favorites, dependent: :destroy
  has_many :favoriteusers, through: :favorites, source: :user
  
  private
  
  def image_size
    if image.size > 5.megabytes
      errors.add(:image, "should be less than 5MB")
    end
  end
end
