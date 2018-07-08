Rails.application.routes.draw do

	namespace :user do 
		resources :contacts
	end

	namespace :admin do 
		resources :contacts
	end

end
