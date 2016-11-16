class User < ApplicationRecord
  has_many :posts, foreign_key: "teacher_id"
  has_many :posts, foreign_key: "student_id"
  has_many :tags
end
