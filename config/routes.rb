Rails.application.routes.draw do
  root 'setting#index'
  resources :setting, only: [:index, :create]
end
