class User::ProductsController < ApplicationController
	layout 'user'
	
	def index
		@contact = Contact.all
		@customer = Customer.new
		@products = Product.all
	end

	def create
		@customer = Customer.new(allowed_params)
		if @customer.save
			ContactMailer.customer_message(@customer).deliver
			UserMailer.inquiry_mailer(@customer).deliver
			redirect_to user_products_path
		else
			render 'new'
		end
	end

	private 
		def allowed_params
			params.require(:customer).permit(:customer_name, :phone, :email)
	end
end