Rails.application.routes.draw do
	devise_for :users
	resources :users,only: [:show,:index,:edit,:update]
	resources :books do
		resource :favorites,only: [:create, :destroy]
		resources :book_comments,only: [:create, :destroy]
	end
	resources :relationships, only: [:create, :destroy]
	root 'home#top'
	get 'home/about'
	get 'users/:id/follows', to:"users#follows" , as:"users_follows"
	get 'users/:id/follower', to:"users#follower", as:"users_follower"

end