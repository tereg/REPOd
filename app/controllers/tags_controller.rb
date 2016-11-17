class TagsController < ApplicationController
  
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end
  
  def create
    @post = Post.find(params[:post_id])
    @tag = current_user.tags.create(tag_params)
    PostTag.create(post_id: @post.id, tag_id: @tag.id)

    redirect_to post_path(@post)
  end 
 
  # def destroy
  #   @post = Post.find(params[:post_id])
  #   @tag = Tag.find(params[:id])
  #   if current_user.role == 'teacher'
  #     @tag.destroy
  #   else
  #     redirect_to post_path(@post)
  #   end
  # end



  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
