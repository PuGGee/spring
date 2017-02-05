Rails.application.routes.draw do
  resources :armies
  resources :units
  resources :events
  devise_for :users
  root to: 'main#index'

  resources :resources
  resources :buildings
end
