class Admin::ProductsController < ApplicationController
	before_action :authenticate_admin!
	layout 'admin'

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
	end

	def edit
		@product = Product.find(params[:id])
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
end
