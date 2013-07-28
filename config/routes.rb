Vaultx::Application.routes.draw do

	root :to => "listings#index"
	get "about" => "pages#about"

	resources :listings

  devise_for :users

end
