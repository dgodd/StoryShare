class AssignmentsController < ApplicationController
  load_and_authorize_resource

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(params[:assignment])
    @assignment.user = current_user
    if @assignment.save
      redirect_to @assignment
    else
      render :new
    end
  end
end
