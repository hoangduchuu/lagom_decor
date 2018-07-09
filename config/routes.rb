Rails.application.routes.draw do

	namespace :admin do
		resources :homes
	end

	namespace :user do
		resources :homes
	end
end
