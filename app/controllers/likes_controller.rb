class LikesController < ApplicationController
  def toggle
    likes = Like.where(user_id: current_user.id, post_id: params[:post_id])
    if likes.empty?
      @like=Like.new
      @like.user_id=current_user.id
      @like.post_id=params[:post_id]
      @like.save
    else
      likes.take.destroy
    end
    render json: {}
  end
  #def create
    #@like=Like.new
    #@like.user_id=current_user.id
    #@like.post_id=params[:post_id]
    #@like.save
  #end
  #def destroy
    #@like=Like.find(params[:like_id])
    #@like.destroy
  #end
end
