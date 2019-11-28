class User < ApplicationRecord
  before_save { self.email.downcase! }

  validates :name, presence: true, length: { maximum: 25 }
  validates :email, presence: true, length: { maximum: 50 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  
  has_many :posts, dependent: :destroy
  has_many :follows, dependent: :destroy
  has_many :followings, through: :follows, source: :follow, dependent: :destroy
  has_many :reverses_of_follow, class_name: 'Follow', foreign_key: 'follow_id'
  has_many :followers, through: :reverses_of_follow, source: :user, dependent: :destroy
  
  has_many :favorites, dependent: :destroy
  has_many :favposts, through: :favorites, source: :post
  
  def follow(other_user)
    unless self == other_user
      self.follows.find_or_create_by(follow_id: other_user.id)
    end
  end

  def unfollow(other_user)
    follow = self.follows.find_by(follow_id: other_user.id)
    follow.destroy if follow
  end

  def following?(other_user)
    self.followings.include?(other_user)
  end
  
  def feed_posts
    Post.where(user_id: self.following_ids + [self.id])
  end
  
  def favorite(post)
    self.favorites.find_or_create_by(post_id: post.id)
  end

  def unfavorite(post)
   favorite = self.favorites.find_by(post_id: post.id)
   favorite.destroy if favorite
  end

  def favpost?(post)
    self.favposts.include?(post)
  end
  
  def feed_posts
    Post.where(user_id: self.following_ids + [self.id])
  end
end
