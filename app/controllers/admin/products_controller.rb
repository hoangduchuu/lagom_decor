class Admin::ProductsController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@products = Product.all
		@customers = Customer.all.order(id: :desc)
	end

	def show
		@product = Product.find(params[:id])
		@category = ProductCategory.all
		@customers = Customer.all.order(id: :desc)
	end

	def new
		@product = Product.new
		@customers = Customer.all.order(id: :desc)
	end

	def edit
		@product = Product.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end
	
	def create
		@product = Product.new(allowed_params)

	if @product.save
		redirect_to admin_products_path
	else
		redirect_to new_admin_product_path
	end
	end

	def update
		@product = Product.find(params[:id])
		if @product.update_attributes(allowed_params)
			redirect_to admin_products_path
		else
			render 'new'
		end
	end

	
	def destroy
	  @product = Product.find(params[:id])
	  @product.destroy
	 
	  redirect_to admin_products_path
	end

	private 
	def allowed_params
		params.require(:product).permit(:product_number, :category, :product_name, :price, :top_rated, :avatar, :material, :description)
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
