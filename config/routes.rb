Rails.application.routes.draw do

scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
	devise_for :admins, controllers: {registrations: "registrations"}

	unauthenticated do
   		root :to => 'user/homes#index'
	end

	authenticated do
  		root :to => 'admin/dashboards#index'
	end

  	devise_scope :admin do  
   		get '/admins/sign_out' => 'devise/sessions#destroy'
   		get '/admins/sign_in' => 'devise/sessions#new'     
	end

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
		resources :videos
		resources :project_categories
		resources :product_categories
		resources :services
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
		resources :videos
	end
	end
end
