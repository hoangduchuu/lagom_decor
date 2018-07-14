class Admin::InteriorideasController < ApplicationController
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
			redirect_to new_admin_interioridea_path
		end
	end

	
	def destroy
	  @interioridea = Interioridea.find(params[:id])
	  @interioridea.destroy
	 
	  redirect_to admin_interiorideas_path
	end

	private 
	def allowed_params
		params.require(:interioridea).permit(:category, :title, :show_on_home, :image)
	end
end
