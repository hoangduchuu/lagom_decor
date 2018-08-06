class Admin::ContactsController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@customer = Customer.new
		@contact = Contact.all
		@customers = Customer.all.order(id: :desc)
	end

	def show
		@contact = Contact.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end

	def new
		@contact = Contact.new
		@customers = Customer.all.order(id: :desc)
	end

	def create
		@contact = Contact.new(allowed_params)
		if @contact.save
			ContactMailer.customer_message(@customer).deliver
			redirect_to contacts_path
		else
			redirect_to contacts_path
		end
	end

	def edit
		@contact = Contact.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end

	def update
		@contact = Contact.find(params[:id])
		if @contact.update_attributes(allowed_params)
			redirect_to admin_contacts_path
		else
			redirect_to contacts_path
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
			:openat, :closeat, :facebook, :twitter, :google, :description)
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
