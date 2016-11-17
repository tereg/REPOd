class Tag < ApplicationRecord
  belongs_to :user
  has_many :post_tags
  has_many :posts, through: :post_tags
    enum media_type: [:text, :video, :audio]
end
