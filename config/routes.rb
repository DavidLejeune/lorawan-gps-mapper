Rails.application.routes.draw do
  resources :data
  resources :sensors
  root 'static_pages#home'
  
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
