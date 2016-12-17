Rails.application.routes.draw do
  root 'settings#index'
  resources :settings, only: [:index, :create]
  resources :users, only: :create
end
