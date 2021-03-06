module Api
  module V1
    class OrdersController < ApiController
      def create
        @order = Order.new(order_params)

        if @order.save
          render json: @order, status: :created
        else
          render json: { errors: @order.errors }, status: :unprocessable_entity
        end
      end

      private

      def order_params
        params.require(:order).permit(:user_name, :user_address, :user_number,
                                      line_items_attributes: [:quantity, :product_id])
      end
    end
  end
end
