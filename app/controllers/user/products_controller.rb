class User::ProductsController < ApplicationController
	layout 'user'
	
	def index
		@customer = Customer.new
		@products = Product.all
	end

	def create
		@customer = Customer.new(allowed_params)
		customer.email(@customer.email).exists?
		if @customer.save
			ContactMailer.customer_message(@customer).deliver
			redirect_to user_contacts_path
		else
			render 'new'
		end
	end
end
