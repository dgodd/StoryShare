class CommentsController < ApplicationController
  load_and_authorize_resource :story

  def create
    @comment = Comment.new(params[:comment])
    @comment.user = current_user
    @comment.story = @story
    if @comment.save
      redirect_to @story
    else
      render :new
    end
  end
end
