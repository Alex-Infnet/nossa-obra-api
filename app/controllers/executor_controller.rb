class ExecutorController < ApplicationController
  def index
    render json: Executor.all
  end

  def create
    @executor = Executor.new(executor_params)
    if @executor.save
      return head :created
    end
    head :bad_request
  end

  def update
    @executor = Executor.find(params[:id])
    return head :not_found unless @executor
    if @executor.update(executor_params)
      return head :ok
    end
    head :bad_request
  end

  private

  def executor_params
    params.permit(:name, :phone, :email, :address)
  end
end
