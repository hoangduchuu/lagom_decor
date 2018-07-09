Rails.application.routes.draw do

	namespace :user do 
		resources :contacts
		resources :customers
	end

	namespace :admin do 
		resources :contacts
		resources :customers
	end

end
