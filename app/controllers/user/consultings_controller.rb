class User::ConsultingsController < ApplicationController
	before_action :set_locale
	layout 'user'

	def index
		@customer = Customer.new
		@contact = Contact.all
		@consulting = Consulting.all
		@banners = Banner.all
	end

	def create
		@customer = Customer.new(allowed_params)
		if @customer.save
			ContactMailer.customer_message(@customer).deliver
			UserMailer.inquiry_mailer(@customer).deliver
			redirect_to user_consultings_path
		else
			render 'new'
		end
	end

	private 
	def allowed_params
		params.require(:customer).permit(:customer_name, :phone, :email)
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
