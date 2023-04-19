Rails.application.routes.draw do
  resources :posts, only: %i[new create index destroy]
  resources :users, only: %i[new create]
  resources :sessions, only: %i[create]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root 'posts#index'
end
