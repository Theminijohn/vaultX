Vaultx::Application.routes.draw do

  resources :listings

  devise_for :users
	root :to => "pages#home"
	get "about" => "pages#about"

end
