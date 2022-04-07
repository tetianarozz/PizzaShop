module Api
  module V1
    class CategoriesController < ApiController
      def index
        render json: Category.order(created_at: :desc)
      end

      def show
        render json: Category.find(params[:id])
      end
    end
  end
end
