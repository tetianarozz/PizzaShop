Rails.application.routes.draw do
  mount Rswag::Ui::Engine => "/api-docs"
  mount Rswag::Api::Engine => "/api-docs"

  resources :products, only: %i[index show]
  resources :categories, only: %i[index show]
  resources :carts, only: %i[create]
  resources :orders, only: %i[create]
end
