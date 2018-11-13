Rails.application.routes.draw do

scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
	devise_for :admins, controllers: {registrations: "registrations"}


root :to => 'admin/dashboards#index'

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
		resources :interioridea_categories
		resources :services
		resources :banners
		resources :project_images
		resources :paintings
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
		resources :abouts
	end
	end
end
