class FavoritesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])

    if @post.favorites.select { |favorite| favorite.user_id == current_user.id }.empty?
      @favorite = Favorite.create(user_id: current_user.id, post_id: @post.id)
      redirect_to post_path(@post)
    else
      @notice = "You have already favorited this post!"
      render 'posts/show'
    end
  end

end