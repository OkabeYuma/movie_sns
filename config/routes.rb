Rails.application.routes.draw do

  # root 'movies#index'
  # resources :movies
  Rails.application.routes.draw do
    resources :movies do
      collection{ get "search"}
    end
  end
  
  get 'movies/index'
  get 'movies/show'
  get 'movies/new'
  get 'movies/edit'

#   get 'user/show'

  devise_for :users, :controllers => {
    :registrations => "registrations"
  }
  resources :users, only: [:show, :index]
  root 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/login', to: 'static_pages#login', via: 'get'
  match '/signup', to: 'static_pages#signup', via: 'get'
  match '/search', to: 'static_pages#search', via: 'get'
  match '/movies', to: 'static_pages#movies', via: 'get'

  # root 'application#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
