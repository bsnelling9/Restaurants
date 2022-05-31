Rails.application.routes.draw do
  resources :resturants
  resources :food_items
  resources :item
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'food_items#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
