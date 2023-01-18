class ProjectController < ApplicationController
  def index
    render json: Project.all
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      return head :created
    end
    head :bad_request
  end

  def update
    @project = Project.find(params[:id])
    return head :not_found unless @project
    if @project.update(project_params)
      return head :ok
    end
    head :bad_request
  end

  private

  def project_params
    params.permit(:name, :description, :start_date, :status, :client_id)
  end
end
