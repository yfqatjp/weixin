Rails.application.routes.draw do

  resources :microposts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
  #get 'static_pages#home'

  get 'about' => 'static_pages#about'
  get 'login' => 'static_pages#login'
  get 'signup' => 'users#new'

end
