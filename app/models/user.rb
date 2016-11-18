class User < ApplicationRecord
  has_many :posts
  has_many :tags
   enum role: [:student, :teacher]

  has_secure_password
  validates :username, presence: true
  validates :email, presence: true
end
