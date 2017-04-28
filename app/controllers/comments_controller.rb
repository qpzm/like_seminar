class CommentsController < ApplicationController
  def create
    @comment = Comment.new
    @comment.content=params[:content]
    @comment.post_id=params[:post_id]
    @comment.user_id=current_user.id
    @comment.save
    redirect_to :back
  end
end
