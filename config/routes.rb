Rails.application.routes.draw do

	namespace :admin do
		resources :interiorideas
	end

	namespace :user do
		resources :interiorideas
	end
	
end
