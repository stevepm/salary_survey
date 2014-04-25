Rails.application.routes.draw do
  get '/', to: 'users#index'
  resources :users

  resources :surveys

  resources :results
end
