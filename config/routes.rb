Rails.application.routes.draw do

  get '/npc9uAnEeD' => 'admins#new'
  get 'admins/new' => 'sessions#new'
  resources :admins, except: :new

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
