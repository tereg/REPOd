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

  def select_phase_tags

    tags.map do |tag|
      if (tag.name == "Phase 1" || tag.name == "Phase 2" || tag.name == "Phase 3" )
        tag 
      end

    end 
   

    # if tags 
    #   @tags = tags.select { |tag| (tag.name == "Phase 1" || tag.name == "Phase 2" || tag.name == "Phase 3" )}
    # end
  end
end
