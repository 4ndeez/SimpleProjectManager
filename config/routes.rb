Rails.application.routes.draw do
  resources :tasks
  resources :projects
  devise_for :users
  get 'persons/profile', as: 'user_root'
  root 'home#index'
end
