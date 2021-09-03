Rails.application.routes.draw do
  root 'users#index'
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

  resources :results
end
