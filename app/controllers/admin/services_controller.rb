class Admin::ServicesController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@services = Service.all
		@customers = Customer.all.order(id: :desc)
	end

	def show
		@service = Service.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end

	def new
		@service = Service.new
		@customers = Customer.all.order(id: :desc)
	end

	def edit
		@service = Service.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end
	
	def create
		@service = Service.new(allowed_params)

		if @service.save
			redirect_to admin_homes_path
		else
			redirect_to new_adminhomes_path
		end
	end

	def update
		@service = Service.find(params[:id])
		if @service.update_attributes(allowed_params)
			redirect_to admin_homes_path
		else
			render 'new'
		end
	end

	
	def destroy
		@service = Service.find(params[:id])
		@service.destroy

		redirect_to admin_homes_path
	end

	private 
	def allowed_params
		params.require(:service).permit(:title_1, :title_2, :description, :image)
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
