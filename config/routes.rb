Rails.application.routes.draw do
  get 'sessions/new'
  root to: "tasks#index"
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
  resources :tasks
  get 'signup', to: 'users#new'
  resources :users,only: [:new, :create]
end
