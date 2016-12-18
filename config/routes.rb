Rails.application.routes.draw do
  root 'settings#index'
  resources :settings, only: [:index, :create, :destroy]
  resources :users, only: :create
end
