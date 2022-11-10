Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # # # # resources :restaurant
  # get 'restaurants', to: 'restaurant#index'
  # get 'restaurants/new', to: 'restaurant#new', as: :new_restaurant
  # post 'restauarants', to: 'restaurant#create'

  root to: 'restaurants#index'
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[create]
  end
end
