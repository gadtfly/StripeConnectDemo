Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: :omniauth_callbacks}
  resources :users, only: [:index, :show]
  resources :tips,  only: [:index, :create]
  root 'users#index'
end
