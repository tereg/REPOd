class Post < ApplicationRecord
  has_many :post_tags
  has_many :tags, through: :post_tags
    enum media_type: [:text, :video, :audio]
  belongs_to :user
  def self.search(search)
    where("title||description ILIKE ?", "%#{search}%")
  end
end
