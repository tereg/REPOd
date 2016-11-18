class User < ApplicationRecord
  has_many :posts
  has_many :tags
  has_many :favorites
  has_many :favorited_posts, through: :favorites, source: :post
   enum role: [:student, :teacher]

  has_secure_password
  validates :username, presence: true
  validates :email, presence: true
end
