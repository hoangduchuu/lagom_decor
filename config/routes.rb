Rails.application.routes.draw do

  devise_for :admins
	namespace :admin do
		resources :homes
		resources :comments
		resources :contacts
		resources :customers
		resources :consultings
		resources :consultings
		resources :products
	end

	namespace :user do
		resources :homes
		resources :comments
		resources :contacts
		resources :consultings
		resources :consultings
		resources :products
	end
end
