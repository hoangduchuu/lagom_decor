class Admin::InteriorideaCategoriesController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@category = InteriorideaCategory.all
		@customers = Customer.all.order(id: :desc)
	end

	def new
		@category = InteriorideaCategory.new
		@customers = Customer.all.order(id: :desc)
	end

	def edit
		@category = InteriorideaCategory.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end
	
	def create
		@category = InteriorideaCategory.new(allowed_params)

		if @category.save
			redirect_to admin_interioridea_categories_path
		else
			redirect_to new_admin_interioridea_category_path
		end
	end

	def update
		@category = InteriorideaCategory.find(params[:id])
		if @category.update_attributes(allowed_params)
			redirect_to admin_interioridea_categories_path
		else
			render 'new'
		end
	end

	
	def destroy
		@category = InteriorideaCategory.find(params[:id])
		@category.destroy

		redirect_to admin_interioridea_categories_path
	end

	private 
	def allowed_params
		params.require(:interioridea_category).permit(:category_name, :show)
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
