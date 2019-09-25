Rails.application.routes.draw do
  resources :comments
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create, :edit, :update] do
    member do
      get :followings
      get :followers
      get :favorites
    end
  end
  
  resources :posts, only: [:create, :edit, :destroy]
  resources :follows, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
end
