Rails.application.routes.draw do

	namespace :admin do
    	resources :contacts
  end

  namespace :user do
  	resources :contacts
  end
end
