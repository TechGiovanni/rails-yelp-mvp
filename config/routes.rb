Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'restaurant#index'
  # # resources :restaurant
  get 'restaurants', to: 'restaurant#index'
  get 'restaurants/new', to: 'restaurant#new'
  get 'restauarants', to: 'restaurants#create'
end
