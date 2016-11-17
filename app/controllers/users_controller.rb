class UsersController < ApplicationController
  
  def index
  
  end
  
  def new 
  
  end   
  
  def create

  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  
  def edit

  end

  def update

  end

  def destroy
  end

  def login
  end
end
