class Admin::InteriorideasController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@interiorideas = Interioridea.all
	end

	def show
		@interioridea = Interioridea.find(params[:id])
	end

	def new
		@interioridea = Interioridea.new
	end

	def edit
		@interioridea = Interioridea.find(params[:id])
	end
	
	def create
		@interioridea = Interioridea.new(allowed_params)

	if @interioridea.save
		redirect_to admin_interiorideas_path
	else
		redirect_to new_admin_interioridea_path
	end
	end

	def update
		@interioridea = Interioridea.find(params[:id])
		if @interioridea.update_attributes(allowed_params)
			redirect_to admin_interiorideas_path
		else
			render 'new'
		end
	end

	
	def destroy
	  @interioridea = Interioridea.find(params[:id])
	  @interioridea.destroy
	 
	  redirect_to admin_interiorideas_path
	end

	private 
	def allowed_params
		params.require(:interioridea).permit(:title, :category, :image, :show_on_home, :description, :image_one, :image_two, :image_three, :designer )
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
