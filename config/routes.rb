Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  post 'sessions/destroy'
  get 'users/new'
  get 'users/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
  resources :tasks
  get 'signup', to: 'users#new'
  resources :users,only: [:new, :create]
end
