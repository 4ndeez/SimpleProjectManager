Rails.application.routes.draw do
  resources :tasks
  resources :projects
  devise_for :users
  #get 'persons/profile'
  get 'persons/profile', as: 'user_root'
  #get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
