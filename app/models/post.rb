class Post < ApplicationRecord
  has_many :post_tags
  has_many :tags, through: :post_tags

  belongs_to :teacher, class_name: "User", foreign_key: "teacher_id"
  belongs_to :student, class_name: "User", foreign_key: "student_id"
end
