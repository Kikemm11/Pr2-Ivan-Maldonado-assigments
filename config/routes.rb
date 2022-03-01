Rails.application.routes.draw do
  resources :projects
  resources :statuses
  resources :clients
  resources :companies
  resources :cities
  resources :states
  #get 'home/index'
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
