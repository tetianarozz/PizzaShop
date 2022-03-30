class ProductsController < ApplicationController
  def index
    render json: Product.order(created_at: :desc)
  end

  def show
    render json: Product.find(params[:id])
  end
end
