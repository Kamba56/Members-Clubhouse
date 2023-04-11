Rails.application.routes.draw do
  resources :posts, only: %i[new create index]
  resources :users, only: %i[new create]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root 'posts#index'
end
