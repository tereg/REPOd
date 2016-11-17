class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def create
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  def login
  end
end
