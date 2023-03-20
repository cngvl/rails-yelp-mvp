Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'restaurants#index'
  # Restaurant index
  # get 'restaurants', to: 'restaurants#index'

  # Create new restaurant
  # get 'restaurants/new', to: 'restaurants#new'

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end
