class Admin::ProjectsController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@projects = Project.all
		@videos = Video.all
		@customers = Customer.all.order(id: :desc)
	end

	def show
		@project = Project.find(params[:id])
		@category = ProjectCategory.all
		@customers = Customer.all.order(id: :desc)
	end

	def new
		@project = Project.new
		@customers = Customer.all.order(id: :desc)
	end

	def edit
		@project = Project.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end
	
	def create
		@project = Project.new(allowed_params)

	if @project.save
		redirect_to admin_project_images_path(project: @project.id)
	else
		redirect_to new_admin_project_path
	end
	end

	def update
		@project = Project.find(params[:id])
		if @project.update_attributes(allowed_params)
			redirect_to admin_projects_path
		else
			redirect_to new_admin_interioridea_path
		end
	end

	
	def destroy
	  @project = Project.find(params[:id])
	  @project.destroy
	  redirect_to admin_projects_path
	end

	private 
	def allowed_params
		params.require(:project).permit(:category, :project_name, :date, :location, :value, :client, :description, :solution, :cover_photo, :image_one, :image_two, :image_three)
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
