class Admin::ConsultingsController < ApplicationController
	before_action :authenticate_admin!
	layout 'admin'

	def index
		@consulting = Consulting.all
	end

	def show
		@consulting = Consulting.find(params[:id])
	end

	def new
		@consulting = Consulting.new
	end

	def edit
		@consulting = Consulting.find(params[:id])
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
end
