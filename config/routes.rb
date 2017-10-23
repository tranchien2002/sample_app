

Rails.application.routes.draw do

  get 'users/new'

  root 'static_pages#home'

  get '/home', to: "static_pages#home"

  get "/help", to: "static_pages#help"

  get  '/signup',  to: 'users#new'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new , :edit , :create, :update]
  resources :microposts,          only: [:create, :destroy]
end
