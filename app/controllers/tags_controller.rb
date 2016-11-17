class TagsController < ApplicationController
  
  def index
    @tags = Tag.all
  end
  
  # def new
  #   @post = Post.find(params[:post_id])
  #   @tag = @post.tags.new(tag_params)
  # end 
  
  def create
    @post = Post.find(params[:post_id])
    @tag = current_user.tags.create()

    redirect_to post_path(@post)
    # if @tag.save
    #   redirect_to tags_path
    # else
    #   @errors = @tag.errors.full_messages
    #   render 'new'
    # end
  end 
 
  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
  end



  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
