Rails.application.routes.draw do
  resources :resources
  devise_for :users
  root to: 'main#index'
end
