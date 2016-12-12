Rails.application.routes.draw do
  resources :setting, only: :index
end
