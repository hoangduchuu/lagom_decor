Rails.application.routes.draw do

	namespace :admin do
		resources :homes
		resources :comments
		resources :contacts
		resources :customers
		resources :consultings
	end

	namespace :user do
		resources :homes
		resources :comments
		resources :contacts
		resources :consultings
	end
end
