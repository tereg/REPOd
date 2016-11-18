Rails.application.routes.draw do
  get 'admin' => 'admin#new'
  resources :admins

  get 'signup' => 'users#new'
  resources :users

  get 'login' => 'sessions#new'
  resources :sessions

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  root 'sessions#new'

  resources :posts do
    resources :tags, only: [:create, :destroy]
    resources :favorites, only: :create
  end

  resources :tags, only: [:index, :show]

end
