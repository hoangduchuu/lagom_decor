Rails.application.routes.draw do

	namespace :admin do
		resources :homes
		resources :comments
		resources :contacts
		resources :customers
		resources :consultings
		resources :consultings
		resources :products
		resources :interiorideas
		resources :projects
		resources :dashboards
	end

	namespace :user do
		resources :homes
		resources :comments
		resources :contacts
		resources :consultings
		resources :consultings
		resources :products
		resources :interiorideas
		resources :projects
	end
	root 'user/homes#index'
end
