class CartsController < ApplicationController
  def create
    @cart = Cart.new(cart_params)

    if @cart.save
      render json: @cart, status: :created
    else
      render json: { errors: @cart.errors }, status: :unprocessable_entity
    end
  end

  private

  def cart_params
    #params.require(:cart).permit(:)
  end
end