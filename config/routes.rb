Vaultx::Application.routes.draw do

  get "user/show"
	root :to => "listings#index"
	get "about" => "pages#about"

	resources :listings

  devise_for :users
	get 'users/:id' => 'user#show', as: :user

end
