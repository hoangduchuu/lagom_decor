Rails.application.routes.draw do
	resources :contacts

	namespace :admin do
    	resources :contacts
  end
end
