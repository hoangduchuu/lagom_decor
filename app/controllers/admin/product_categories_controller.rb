class Admin::ProductCategoriesController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@category = ProductCategory.all
		@customers = Customer.all.order(id: :desc)
	end

	def new
		@category = ProductCategory.new
		@customers = Customer.all.order(id: :desc)
	end

	def edit
		@category = ProductCategory.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end
	
	def create
		@category = ProductCategory.new(allowed_params)

		if @category.save
			redirect_to admin_product_categories_path
		else
			redirect_to new_admin_project_category_path
		end
	end

	def update
		@category = ProductCategory.find(params[:id])
		if @category.update_attributes(allowed_params)
			redirect_to admin_product_categories_path
		else
			render 'new'
		end
	end

	
	def destroy
		@category = ProductCategory.find(params[:id])
		@category.destroy

		redirect_to admin_product_categories_path
	end

	private 
	def allowed_params
		params.require(:product_category).permit(:category_name, :show)
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
