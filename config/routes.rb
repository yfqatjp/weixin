Rails.application.routes.draw do

  resources :microposts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users
  root 'static_pages#home'
  get 'about' => 'static_pages#about'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'signup' => 'users#new'


end
