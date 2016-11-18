class AdminsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to edit_admin(@user)
    else
      redirect_to signup_path
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.all
    @tags = Tag.all
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :username, :role)
  end
end