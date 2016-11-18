class FavoritesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @favorite = Favorite.new
  end

end