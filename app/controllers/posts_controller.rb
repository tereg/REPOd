class PostsController < ApplicationController
  before_action :redirect_non_authorized_user

  def index
    @posts = Post.all
    @tags = Tag.all
    if params[:search]
      @posts = Post.search(params[:search]).order("created_at DESC")
    else
      @posts = Post.all.order("created_at DESC")
    end

    if (params[:order] == 'topic')
      @posts = @posts.sort_by { |post| post.topic }
    end 

    if params[:order] == 'phase'
      # @tags = Tag.all.select { |tag| (tag.name == "Phase 1" || tag.name == "Phase 2" || tag.name == "Phase 3" )}
      # @tags.sort_by! { |tag| tag.name }
      # @posts = @posts.sort_by { |post| p post.sort_by_phase }
      phase_tags = @posts.map { |post| post.select_phase_tags }
      phase_tags = phase_tags.reject &:blank?
      p phase_tags
      # @posts = phase_tags.map { |tag| tag.posts }
      # p @posts
      p "***&&&" * 80
      # p phase_tags
      # p "*" * 80
      # @posts = @tags.map do |tag|
      #   tag.posts
      # end 

      # @posts = @posts.flatten.uniq

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
