Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"
  get :dashboard, to: "categories#index"
 
  resources :usernames, only: [:new, :update]
  resources :articles, only: [:index, :new, :show, :create]
  resources :categories, only: [:index, :show]
  resources :votes, only: [:create, :destroy]
end
