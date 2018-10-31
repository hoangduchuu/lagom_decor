class Admin::BannersController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@banners = Banner.all
		@customers = Customer.all.order(id: :desc)
	end

	def new
		@banner = Banner.new
		@customers = Customer.all.order(id: :desc)
	end

	def edit
		@banner = Banner.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end

	def create
		@banner = Banner.new(allowed_params)

		if @banner.save
			redirect_to admin_banners_path
		else
			redirect_to admin_banners_path
		end
	end

	def update
		@banner = Banner.find(params[:id])
		if @banner.update_attributes(allowed_params)
			redirect_to admin_banners_path
		else
			render 'new'
		end
	end

	private 
	def allowed_params
		params.require(:banner).permit(:name, :image)
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
