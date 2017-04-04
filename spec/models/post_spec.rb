require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user1) { User.new(id: 1, username: "max", email: "maxwell.mathews@devbootcamp.com", role: "teacher", password: 'password') }
  let(:post1) { Post.new(id: 1, title: 'RSpec Basics', description: 'An introductory guide to RSpec syntax and how to incorporate testing within your development', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/rspec/README.md', user_id: 1, verified: true) }
  let(:post2) { Post.new(id: 2, title: 'Regular Expressions', description: 'An introductory guide to Regular Expressions', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/regular-expressions/README.md', user_id: 1, verified: true) }
  let(:post5) { Post.new(id: 5, title: 'Git shortcuts', description: "A git and git flow cheat sheet" , media_type: 'text', url: 'https://github.com/ArslanBilal/Git-Cheat-Sheet', user_id: 1, verified: true) }

  let(:rspec_tag) { Tag.new(id: 1, user_id: 1, name: 'Rspec') }
  let(:regex_tag) { Tag.new(id: 2, user_id: 1, name: 'RegEx') }
  let(:git_tag)   { Tag.new(id: 3, user_id: 1, name: 'Git') }

  let(:post_tag1) { PostTag.new(id: 1, post_id: post1.id, tag_id: rspec_tag.id) }
  let(:post_tag2) { PostTag.new(id: 2, post_id: post2.id, tag_id: regex_tag.id) }
  let(:post_tag3) { PostTag.new(id: 3, post_id: post5.id, tag_id: git_tag.id) }

  it "has a title" do 
    expect(post1.title).to eq("RSpec Basics")
  end 

  it "has a description" do 
    expect(post1.description).to eq("An introductory guide to RSpec syntax and how to incorporate testing within your development")
  end 

  it "has a media type" do 
    expect(post1.media_type).to eq("text")
  end 

  it "has a url" do 
    expect(post1.url).to eq("https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/rspec/README.md")
  end 

  it "has a user id" do 
    expect(post1.user_id).to eq(1)
  end

  it "returns true if it has been verified by a teacher" do 
    expect(post1.verified).to eq(true)
  end

  describe "#topic" do 
    it "orders posts by topics" do
      @posts = [post1, post2, post5]
      expect(@posts.each { |post| post.topic }).to eq( [post1, post2, post5] )
    end 
  end 

  describe "#sort_by_phase" do 
    let(:user1) { User.new(id: 1, username: "max", email: "maxwell.mathews@devbootcamp.com", role: "teacher", password: 'password') }

    let(:post1) { Post.new(id: 1, title: 'RSpec Basics', description: 'An introductory guide to RSpec syntax and how to incorporate testing within your development', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/rspec/README.md', user_id: 1, verified: true) }
    let(:post2) { Post.new(id: 2, title: 'Regular Expressions', description: 'An introductory guide to Regular Expressions', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/regular-expressions/README.md', user_id: 1, verified: true) }
    let(:post5) { Post.new(id: 5, title: 'Git shortcuts', description: "A git and git flow cheat sheet" , media_type: 'text', url: 'https://github.com/ArslanBilal/Git-Cheat-Sheet', user_id: 1, verified: true) }
    let(:post6) { Post.new(id: 6, title: "DBC's Three Agreements", description: "An outline to DBC's 3 agreements from the student handbook." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/resources/three-agreements.md', user_id: 1, verified: true) }

    let(:rspec_tag) { Tag.new(id: 1, user_id: 1, name: 'Rspec') }
    let(:regex_tag) { Tag.new(id: 2, user_id: 1, name: 'RegEx') }
    let(:git_tag)   { Tag.new(id: 3, user_id: 1, name: 'Git') }
    let(:phase1_tag) { Tag.new(id: 4, user_id: 1, name: 'Phase 1') }
    let(:phase2_tag) { Tag.new(id: 5, user_id: 1, name: 'Phase 2') }
    let(:phase3_tag) { Tag.new(id: 6, user_id: 1, name: 'Phase 3') }

    let(:post_tag1) { PostTag.new(id: 1, post_id: post1.id, tag_id: rspec_tag.id) }
    let(:post_tag2) { PostTag.new(id: 2, post_id: post2.id, tag_id: regex_tag.id) }
    let(:post_tag3) { PostTag.new(id: 3, post_id: post5.id, tag_id: git_tag.id) }
    let(:post_tag4) { PostTag.new(id: 4, post_id: post1.id, tag_id: phase2_tag.id) }
    let(:post_tag5) { PostTag.new(id: 5, post_id: post2.id, tag_id: phase3_tag.id) }
    let(:post_tag6) { PostTag.new(id: 6, post_id: post5.id, tag_id: phase1_tag.id) }
    
    it "excludes posts that do not have phase tags" do 
      @posts = [post1, post2, post5, post6]
      expect(@posts.map { |post| post.sort_by_phase }).not_to include(post6)
    end 

    it "orders posts by phase" do
      @posts = [post1, post2, post5, post6]
      @tags = [rspec_tag, regex_tag, git_tag, phase1_tag, phase2_tag, phase3_tag]
    
      @posts
      expect(@posts.each { |post| post.sort_by_phase }).to eq([post5, post1, post2])
    end 
  end 
end
