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

  scope module: 'administration' do
    devise_for :admins, controllers: {
      sessions: 'administration/sessions',
      registrations: 'administration/registrations',
      confirmations: 'administration/confirmations',
      passwords: 'administration/passwords',
      unlocks: 'administration/unlocks',
    }

    resources :admins
  end
end
