require 'rails_helper'

RSpec.describe Post, type: :model do
  let!(:user1) { User.create!(id: 1, username: "max", email: "maxwell.mathews@devbootcamp.com", role: "teacher", password: 'password') }

  let!(:post1) { Post.create!(id: 1, title: 'RSpec Basics', description: 'An introductory guide to RSpec syntax and how to incorporate testing within your development', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/rspec/README.md', user_id: 1, verified: true) }
  let!(:post2) { Post.create!(id: 2, title: 'Regular Expressions', description: 'An introductory guide to Regular Expressions', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/regular-expressions/README.md', user_id: 1, verified: true) }
  let!(:post5) { Post.create!(id: 5, title: 'Git shortcuts', description: "A git and git flow cheat sheet" , media_type: 'text', url: 'https://github.com/ArslanBilal/Git-Cheat-Sheet', user_id: 1, verified: true) }
  let!(:post6) { Post.create!(id: 6, title: "DBC's Three Agreements", description: "An outline to DBC's 3 agreements from the student handbook." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/resources/three-agreements.md', user_id: 1, verified: true) }

  let!(:rspec_tag) { Tag.create!(id: 1, user_id: 1, name: 'Rspec') }
  let!(:regex_tag) { Tag.create!(id: 2, user_id: 1, name: 'RegEx') }
  let!(:git_tag)   { Tag.create!(id: 3, user_id: 1, name: 'Git') }
  let!(:phase1_tag) { Tag.create!(id: 4, user_id: 1, name: 'Phase 1') }
  let!(:phase2_tag) { Tag.create!(id: 5, user_id: 1, name: 'Phase 2') }
  let!(:phase3_tag) { Tag.create!(id: 6, user_id: 1, name: 'Phase 3') }

  let!(:post_tag1) { PostTag.create!(id: 1, post_id: post1.id, tag_id: rspec_tag.id) }
  let!(:post_tag2) { PostTag.create!(id: 2, post_id: post2.id, tag_id: regex_tag.id) }
  let!(:post_tag3) { PostTag.create!(id: 3, post_id: post5.id, tag_id: git_tag.id) }
  let!(:post_tag4) { PostTag.create!(id: 4, post_id: post1.id, tag_id: phase2_tag.id) }
  let!(:post_tag5) { PostTag.create!(id: 5, post_id: post2.id, tag_id: phase3_tag.id) }
  let!(:post_tag6) { PostTag.create!(id: 6, post_id: post5.id, tag_id: phase1_tag.id) }

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

  describe ".identify_params" do 
    it "returns a string of the search term when params equals search" do 
      params = {"utf8"=>"✓", "search"=>"git", "commit"=>"Search"}
      expect(Post.identify_params(params)).to eq("git")
    end 

    it "returns the string 'topic' when params equals topic" do 
      params = {"order"=>"topic"}
      expect(Post.identify_params(params)).to eq("topic")
    end 

    it "returns the string 'phase' when params equals phase" do 
      params = {"order"=>"phase"}
      expect(Post.identify_params(params)).to eq("phase")
    end 

    it "returns the string 'date' when params equals date" do 
      params = {"order"=>"date"}
      expect(Post.identify_params(params)).to eq("date")
    end 
  end 

  describe ".search" do 
    context "when posts are searched by keywords" do 
      params = {"utf8"=>"✓", "search"=>"git", "commit"=>"Search"}
      it "returns posts matching the search terms" do 
        expect(Post.search(params)).to include(post5)
      end 
    end

    context "when posts are searched by topic" do 
      params = {"order"=>"topic"}
      it "returns posts sorted by topic" do 
        expect(Post.search(params)).to eq([post6, post5, post2, post1])
      end 
    end 

    context "when posts are searched by phase" do 
      params = {"order"=>"phase"}
      it "returns posts sorted by phase" do 
        expect(Post.search(params)).to eq([post5, post1, post2])
      end 

      it "does not include posts that do not have a phase tag" do
        params = {"order"=>"phase"}
        expect(Post.search(params)).not_to include(post6)
      end 
    end 

    context "when posts are searched by most recent" do 
      params = {"order"=>"date"}
      it "returns posts sorted by date created" do 
        expect(Post.search(params)).to eq([post6, post5, post2, post1])
      end 
    end 
  end 

  describe "#topic" do 
    it "returns the name of the first tag of a post if a post has tags" do 
      post2.topic
      post5.topic 
      expect(post1.topic).to eq("Rspec")
    end 

    it "returns an empty string if the post has no tags" do
      expect(post6.topic).to eq("") 
    end 

    it "orders posts by topics" do
      @posts = [post2, post1, post5]
      expect(@posts.sort_by { |post| post.topic }).to eq( [post5, post2, post1] )
    end 
  end 

  describe "#has_a_phase?" do 
    it "returns true if a post has a phase tag" do 
      post5.tags 
      expect(post5.has_a_phase?).to eq(true)
    end 

    it "returns false if a post does not have a phase tag" do 
      expect(post6.has_a_phase?).to eq(false)
    end 
  end 

  describe "#phase_tag" do 
    it "returns the name of the phase tag if it has a phase tag" do 
      expect(post5.phase_tag).to eq("Phase 1")
    end 
  end 
end