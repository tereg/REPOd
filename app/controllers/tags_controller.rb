class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end
  
  def create
    @tag = Tag.find_by(name: params[:tag][:name])
    @post = Post.find(params[:post_id])

    if @tag 
      PostTag.create(post_id: @post.id, tag_id: @tag.id)
      
      redirect_to post_path(@post)
    else
      @post = Post.find(params[:post_id])
      @tag = current_user.tags.create(tag_params)
      @post.tags << @tag 
      
      redirect_to post_path(@post)
    end
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
