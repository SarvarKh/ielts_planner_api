Rails.application.routes.draw do
  resources :users do
    resources :results
  end
end
