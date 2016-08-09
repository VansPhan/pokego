Rails.application.routes.draw do
	root 'pokemons#index'
	resource :session
	resources :pokemons, :users

end