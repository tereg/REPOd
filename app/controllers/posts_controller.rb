class PostsController < ApplicationController
  before_action :redirect_non_authorized_user

  def index
    @posts = Post.all
    @tags = Tag.all

    if params
      @posts = Post.sort_by_params(params)
    else
      @posts = Post.all.order("created_at DESC")
    end

    respond_to do |format|
      format.html
      format.json
    end
  end

  def new
    @post = Post.new
  end

  def create
    @user = User.find(current_user.id)
    @post = @user.posts.new(post_params)
      @user.role == 'teacher' ? @post.verified = true : @post.verified = false

    if @post.save && request.xhr?
      render json:@post
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
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to admin_path(current_user)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :media_type, :url, :user_id, :verified)
  end

  def redirect_non_authorized_user
    if !current_user
      redirect_to root_path
    end
  end 
end
