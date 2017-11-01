Rails.application.routes.draw do
  root 'events#index'
  get '/login', to: 'sessions#new'  
  resources :users, only: [:new, :create, :show]
  resources :events, shallow: true do
    resources :comments, except: [:new, :edit, :update]
    resources :attendances, only: [:create, :destroy]
  end 
  resources :sessions, only: [:new, :create, :destroy]
end
