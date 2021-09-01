Rails.application.routes.draw do
  root 'users/index'

  resources :users do
    resources :results
  end
end
