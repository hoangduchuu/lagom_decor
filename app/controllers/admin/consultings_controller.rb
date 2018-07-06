class Admin::ConsultingsController < ApplicationController

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
		@consulting = Consulting.new(accepted_params)

	if @consulting.save
		redirect_to 'show'
	else
		render 'new'
	end
	end

	def update
	  @consulting = Consulting.find(params[:id])
	 
	  if @consulting.update(accepted_params)
	    redirect_to 'show'
	  else
	    render 'edit'
	  end
	end

	
	def destroy
	  @consulting = Consulting.find(params[:id])
	  @consulting.destroy
	 
	  redirect_to admin_consultings_path
	end

	private 
	def accepted_params
		params.require(:consulting).permit(:title, :text)
	end
end
