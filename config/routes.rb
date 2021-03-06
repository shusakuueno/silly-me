Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    member do
      get :followings
      get :followers
      get :favorites
    end
  delete 'destroy', to: 'users#destroy'
  end
  
  
  resources :posts, only: [:create, :edit, :destroy]
  resources :follows, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
end
