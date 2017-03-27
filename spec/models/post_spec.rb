require 'rails_helper'

RSpec.describe Post, type: :model do
  describe ".topic" do 
    let(:user1) { User.new(id: 1, username: "maxiboy", email: "maxwell.mathews@devbootcamp.com", role: "teacher", password: 'password') }

    let(:post1) { Post.new(id: 1, title: 'RSpec Basics', description: 'An introductory guide to RSpec syntax and how to incorporate testing within your development', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/rspec/README.md', user_id: 1, verified: true) }
    let(:post2) { Post.new(id: 2, title: 'Regular Expressions', description: 'An introductory guide to Regular Expressions', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/regular-expressions/README.md', user_id: 1, verified: true) }
    let(:post5) { Post.new(id: 5, title: 'Git shortcuts', description: "A git and git flow cheat sheet" , media_type: 'text', url: 'https://github.com/ArslanBilal/Git-Cheat-Sheet', user_id: 1, verified: true) }

    let(:rspec_tag) { Tag.new(id: 1, user_id: 1, name: 'Rspec') }
    let(:regex_tag) { Tag.new(id: 2, user_id: 1, name: 'RegEx') }
    let(:git_tag)   { Tag.new(id: 3, user_id: 1, name: 'Git') }

    let(:post_tag1) { PostTag.new(id: 1, post_id: post1.id, tag_id: rspec_tag.id) }
    let(:post_tag2) { PostTag.new(id: 2, post_id: post2.id, tag_id: regex_tag.id) }
    let(:post_tag3) { PostTag.new(id: 3, post_id: post5.id, tag_id: git_tag.id) }
    
    it "orders posts by topics" do
      @posts = [post1, post2, post5]
      expect(@posts.each { |post| post.topic }).to eq( [post1, post2, post5] )
    end 
  end 

  describe "#sort_by_phase" do 
    it "orders posts by phase" do
    end 
  end 

  pending "add some examples to (or delete) #{__FILE__}"
end
