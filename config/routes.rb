Rails.application.routes.draw do
  root 'events#index'
  get '/login', to: 'sessions#new'  
  resources :users
  resources :comments
  resources :events 
  resources :sessions, only: [:new, :create, :destroy]
end
