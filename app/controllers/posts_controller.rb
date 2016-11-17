class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @user = User.find(current_user.id)
    @post = @user.posts.new
  end

  def create
    @user = User.find(current_user.id)
    @post = @user.posts.new(post_params)
    if @post.save
      redirect_to root_path
    else
     render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end


  def edit

  end


  def update

  end

  def destroy

  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :media_type, :url, :user_id, :verified)
  end

end
