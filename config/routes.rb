Rails.application.routes.draw do
  root 'cats#index'
  get  '/signup',  to: 'cats#new'
  post '/signup',  to: 'cats#create'
  resources :cats
  resources :dogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
