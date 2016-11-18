class PostsController < ApplicationController

  def index
    @posts = Post.all
    @tags = Tag.all
    if params[:search]
      @posts = Post.search(params[:search]).order("created_at DESC")
    else
      @posts = Post.all.order("created_at DESC")
    end
    respond_to do |format|
    format.html
    format.json
    end
  end

  def new
    @user = User.find(current_user.id)
    @post = @user.posts.new
  end

  def create
    @user = User.find(current_user.id)
    @post = @user.posts.new(post_params)
    if @post.save && request.xhr?
        p "*" *1000
        p @post
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
    redirect_to _path
  end

  def destroy

  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :media_type, :url, :user_id, :verified)
  end

end
