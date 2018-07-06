Rails.application.routes.draw do

namespace :admin do
  	resources :consultings
  end

namespace :user do
  	resources :consultings
  end
	
end
