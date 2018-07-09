class User::CustomersController < User::BaseUserController
	layout 'user'	

	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.new(allowed_params)
		if @customer.save
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
