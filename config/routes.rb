Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  resources :favorites,only: [:create, :destory]
  root 'home#top'
  get 'home/about'

end