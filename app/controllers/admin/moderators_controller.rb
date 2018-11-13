class Admin::ModeratorsController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@moderators = Admin.all
		@customers = Customer.all.order(id: :desc)
	end

	def show
		@moderator = Admin.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end

	def new
		@moderator = Admin.new
		@customers = Customer.all.order(id: :desc)
	end

	def edit
		@moderator = Admin.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end
	
	def create
		@moderator = Admin.new(allowed_params)

		if @moderator.save
			redirect_to admin_dashboards_path
		else
			redirect_to admin_dashboards_path
		end
	end

	def update
		@moderator = Admin.find(params[:id])
		if @moderator.update_attributes(allowed_params)
			redirect_to admin_dashboards_path
		else
			render 'new'
		end
	end

	
	def destroy
		@moderator = Admin.find(params[:id])
		@moderator.destroy

		redirect_to admin_dashboards_path
	end

	private 
	def allowed_params
		params.require(:moderator).permit(:product_number, :category, :product_name, :price, :top_rated, :avatar, :material, :description)
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
