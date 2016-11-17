class User < ApplicationRecord
  has_many :posts
  has_many :tags
   enum role: [:student, :teacher]
end
