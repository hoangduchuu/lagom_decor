class User::ContactsController < ApplicationController
	layout 'user'

	def index
		@customer = Customer.new
		@contact = Contact.all
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

	private 
		def allowed_params
			params.require(:customer).permit(:customer_name, :phone, :email)
	end
end
