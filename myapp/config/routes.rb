Rails.application.routes.draw do

	root to: "pages#index"
  
	namespace :api, defaults: { format: :json } do
		namespace :v1 do
			post 'authenticate', to: 'authentication#authenticate'
  			devise_for :users
				resources :quotes, only: [:index]
				resources :authors, only: [:index]
		end
	end
  
end