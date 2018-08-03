class Admin::VideosController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def show
		@video = Video.find(params[:id])
	end

	def new
		@video = Video.new
	end

	def edit
		@video = Video.find(params[:id])
	end
	
	def create
		@video = Video.new(allowed_params)

	if @video.save
		redirect_to admin_projects_path
	else
		redirect_to new_admin_project_path
	end
	end

	def update
		@video = Video.find(params[:id])
		if @video.update_attributes(allowed_params)
			redirect_to admin_projects_path
		else
			redirect_to new_admin_interioridea_path
		end
	end

	
	def destroy
	  @video = Video.find(params[:id])
	  @video.destroy
	  redirect_to admin_projects_path
	end

	private 
	def allowed_params
		params.require(:video).permit(:category, :project_name, :date, :location, :value, :client, :description, :solution, :url)
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
