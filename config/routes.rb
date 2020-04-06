Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles # , only: [:show, :index, :new, :create, :edit, :update, :destroy]
  # Next 3 lines show how to reroute to a model
  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create' # or
  resources :users, except: [:new]
end
