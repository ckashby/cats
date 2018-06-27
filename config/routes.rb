Rails.application.routes.draw do
  root 'bats#index'

  # root 'cats#index'
  get  '/signup',  to: 'cats#new'
  post '/signup',  to: 'cats#create'
  get '/login', to: 'cats#new'
  post '/login',  to: 'cats#create'
  resources :cats
  resources :dogs
  resources :users
  resources :bugs
  resources :bats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
