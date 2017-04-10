require 'rails_helper'

RSpec.describe User, type: :model do
  # let(:user1) { User.create(id: 1, username: "maria", email: "maria@maria.com", role: "teacher", password: 'password') }
  # let(:user2) { User.create(id: 2, username: "sally", email: "sally@sally.com", role: "student", password: 'password') }
  describe "attributes" do
    it { should have_db_column(:username) }
    it { should have_db_column(:email) }
    it { should have_db_column(:role) }
    it { should have_db_column(:password_digest) }
    it { should have_secure_password }
  end

  describe "validations" do 
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
  end 

  describe "associations" do
    it { should have_many(:posts) }
    it { should have_many(:tags) }
    it { should have_many(:favorites) }
    it { should have_many(:favorited_posts) }
  end

  # it { should validate_presence_of(:name) }

  # it "has a username" do 
  #   expect(user1.username).to eq("maria")
  # end 

  # it "is invalid without a username" do 
  #   mario = User.create(id: 1, username: "", email: "mario@mario.com", role: "teacher", password: 'password') 
  #   expect(mario).to_not be_valid
  #   expect(mario.errors[:username]).to include("can't be blank")
  # end 

  # it "has an email" do
  #   expect(user1.email).to eq("maria@maria.com") 
  # end 

  # it "is invalid without an email" do 
  #   mario = User.create(id: 1, username: "mario", email: "", role: "teacher", password: 'password') 
  #   expect(mario).to_not be_valid
  #   expect(mario.errors[:email]).to include("can't be blank")
  # end 

  # it "has a role" do 
  #   expect(user1.role).to eq("teacher")
  #   expect(user2.role).to eq("student")
  # end 
end
