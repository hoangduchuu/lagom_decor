class Admin::ConsultingsController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@consultings = Consulting.all
		@customers = Customer.all.order(id: :desc)
	end

	def show
		@consulting = Consulting.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end

	def new
		@consulting = Consulting.new
		@customers = Customer.all.order(id: :desc)
	end

	def edit
		@consulting = Consulting.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end
	
	def create
		@consulting = Consulting.new(allowed_params)

		if @consulting.save
			redirect_to admin_consultings_path
		else
			render 'new'
		end
	end

	def update
		@consulting = Consulting.find(params[:id])
		if @consulting.update_attributes(allowed_params)
			redirect_to admin_consultings_path
		else
			render 'new'
		end
	end

	
	def destroy
		@consulting = Consulting.find(params[:id])
		@consulting.destroy
		
		redirect_to admin_consultings_path
	end

	private 
	def allowed_params
		params.require(:consulting).permit(:title, :text)
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
