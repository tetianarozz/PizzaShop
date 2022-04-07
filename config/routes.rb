Rails.application.routes.draw do
  mount Rswag::Ui::Engine => "/api-docs"
  mount Rswag::Api::Engine => "/api-docs"
  namespace "api" do
    namespace "v1" do
      resources :products, only: %i[index show]
      resources :categories, only: %i[index show]
      resources :orders, only: %i[create]
    end
  end
end
