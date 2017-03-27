class Post < ApplicationRecord
  has_many :post_tags
  has_many :tags, through: :post_tags
  has_many :favorites
  has_many :favorited_users, through: :favorites, source: :user
    enum media_type: [:text, :video, :audio]
  belongs_to :user

  def self.search(search)
    where("title||description ILIKE ?", "%#{search}%")
  end

  def topic
    if tags.first 
      tags.first.name
    else
      ""
    end 
  end 

end
