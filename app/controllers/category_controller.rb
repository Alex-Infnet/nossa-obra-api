class CategoryController < ApplicationController
  def index
    render json: Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      return head :created
    end
    head :bad_request
  end

  def delete
    @category = Category.find(params[:id])
    return head :not_found unless @category
    return head :forbidden unless Activity.where(category_id: @category.id).length
    if @category.destroy
      return head :ok
    end
    head :bad_request
  end

  private 

  def category_params
    params.permit(:name, :description)
  end
end
