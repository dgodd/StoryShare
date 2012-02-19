class StoriesController < ApplicationController
  load_and_authorize_resource

  def index
    # @stories = Story.all
  end

  def new
    @story = Story.new(params[:story])
  end

  def create
    @story = Story.new(params[:story])
    @story.user = current_user
    if @story.save
      redirect_to @story
    else
      render :new
    end
  end
end
