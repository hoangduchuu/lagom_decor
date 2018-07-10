Rails.application.routes.draw do

	namespace :admin do
		resources :homes
		resources :comments
	end

	namespace :user do
		resources :homes
		resources :comments
	end
end
