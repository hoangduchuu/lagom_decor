Rails.application.routes.draw do

	namespace :admin do
		resources :projects
	end

	namespace :user do
		resources :projects
	end
	
end
