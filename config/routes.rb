Rails.application.routes.draw do

	namespace :admin do
		resources :homes
		resources :comments
		resources :contacts
		resources :customers
	end

	namespace :user do
		resources :homes
		resources :comments
		resources :contacts
	end
end
