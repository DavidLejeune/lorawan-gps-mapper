Rails.application.routes.draw do
  get 'sessions/new'
  resources :locations
  resources :data
  resources :sensors
  root 'static_pages#home'

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/signup', to: 'users#new'

  resources :users


  get    '/login' => 'sessions#new', as: "login_path"
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  end
