Rails.application.routes.draw do
  root 'users#index'
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  get 'show', to: 'users#show'

  resources :results
end
