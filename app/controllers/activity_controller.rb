class ActivityController < ApplicationController
  def show
    render json: Activity.where(project: params[:project_id]) 
  end

  def create
    @project = Project.find(params[:project_id])
    if !@project
      return head :not_found
    end
    @activity = Activity.new(activity_params)
    @activity.project = @project
    if @activity.save
      return head :created
    end
    head :bad_request
  end

  def update
    @activity = Activity.find(params[:id])
    return head :not_found unless @activity
    if @activity.update(activity_params)
      return head :ok
    end
    head :bad_request
  end

  def delete
    @activity = Activity.find(params[:id])
    return head :forbidden unless @activity.project.waiting_approval?
    if @activity.destroy
      return head :ok
    end
    head :bad_request
  end

  private

  def activity_params
    params.permit(:name, :description, :category_id, :start_date, :duration, :cost, :bdi, :complexity, :executor_id)
  end
end
