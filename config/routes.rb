Rails.application.routes.draw do
#   get 'user/show'

  devise_for :users
  resources :users, only: [:show]
  root 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/login', to: 'static_pages#login', via: 'get'
  match '/signup', to: 'static_pages#signup', via: 'get'
  match '/search', to: 'static_pages#search', via: 'get'

  # root 'application#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
