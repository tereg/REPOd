class Tag < ApplicationRecord
  belongs_to :user
  has_many :post_tags
  has_many :posts, through: :post_tags
end
