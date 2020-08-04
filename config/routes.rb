Rails.application.routes.draw do
  resources :notebooks
  resources :notebook_users
  resources :users, only: :index
  devise_for :users
  root to: 'home#index'
end
