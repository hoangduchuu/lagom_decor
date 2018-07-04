class Admin::ContactsController < ApplicationController

		def index
		@contact = Contact.all
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(allowed_params)
		if @contact.save
			redirect_to contacts_path
		else
			render 'new'
		end
	end

	def edit
		@contact = Contact.find(params[:id])
	end

	def update
		@contact = Contact.find(params[:id])
		if @contact.update_attributes(allowed_params)
			redirect_to admin_contacts_path
		else
			render 'new'
		end
	end

	def destroy
		@contact = Contact.find(params[:id])
		@contact.destroy
		redirect_to contacts_path
	end

	private 
		def allowed_params
			params.require(:contact).permit(:phone, :fax, :email, :address, :opendate, :closedate,
			 :openat, :closeat)
	end
end
