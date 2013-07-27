Vaultx::Application.routes.draw do

	root :to => "pages#home"
	get "about" => "pages#about"

	resources :listings

  devise_for :users




end
