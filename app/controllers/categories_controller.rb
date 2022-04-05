class CategoriesController < ApplicationController
  def index
    render json: Category.order(created_at: :desc)
  end

  def show
    render json: Category.find(params[:id])
  end
end