class Post < ApplicationRecord
  has_many :post_tags
  has_many :tags, through: :post_tags
  has_many :favorites
  has_many :favorited_users, through: :favorites, source: :user
    enum media_type: [:text, :video, :audio]
  belongs_to :user

  def self.sort_by_params(params)
    posts = Post.all
    params = identify_params(params)
    if params == "topic"
      posts = posts.sort_by { |post| post.topic }
    elsif params == "phase"
      posts = posts.select { |post| post.has_a_phase? == true }
      posts = posts.sort_by! { |post| post.phase_tag }
    elsif params == "date" 
      posts = posts.all.order("created_at DESC")
    else 
      posts = posts.search_term(params)
    end 
    posts 
  end

  def self.identify_params(params)
    if params.has_key?("search")
      params = params["search"]
    elsif params.has_value?("topic")
      params = "topic"
    elsif params.has_value?("phase")
      params = "phase"
    else 
      params = "date"
    end 
      params
  end 
  
  def self.search_term(key_word)
    where("title||description ILIKE ?", "%#{key_word}%")
  end 

  def topic
    if tags.first 
      tags.first.name
    else
      ""
    end 
  end 

  def has_a_phase?
    tags.each do |tag|
      if (tag.name == "Phase 1" || tag.name == "Phase 2" || tag.name == "Phase 3" ) 
        return true
      end 
    end 
    false 
  end 

  def phase_tag
    tag = tags.find { |tag| tag.name == "Phase 1" || tag.name == "Phase 2" || tag.name == "Phase 3" }
    tag.name
  end 
end
