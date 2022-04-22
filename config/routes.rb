Rails.application.routes.draw do

  root 'pages#home'

  mount Rswag::Ui::Engine => "/api-docs"
  mount Rswag::Api::Engine => "/api-docs"
  namespace "api" do
    namespace "v1" do
      resources :products, only: %i[index show]
      resources :categories, only: %i[index show]
      resources :orders, only: %i[create]
    end
  end

  scope module: 'admin' do
    devise_for :users
    resources :orders
  end

  # scope module: 'administration' do
  #   devise_for :admin, controllers: {
  #     sessions: 'administration/sessions',
  #     registrations: 'administration/registrations',
  #     confirmations: 'administration/confirmations',
  #     passwords: 'administration/passwords',
  #     unlocks: 'administration/unlocks',
  #   }
  #
  #   resources :admin
  # end
end
