Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users
  resources :courses
  root 'static_pages#home'
  get 'about' => 'static_pages#about'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'signup' => 'users#new'
  #get 'video' => 'users#video'

  get 'courseshow' => 'courses#show'


end
