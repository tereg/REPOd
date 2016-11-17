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

  resources :posts
end
