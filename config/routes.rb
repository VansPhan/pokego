Rails.application.routes.draw do
	root 'pokemons#index'
	resources :bonds, only: [:destroy]
	resource :session
	resources :pokemons, :users, :moves
end