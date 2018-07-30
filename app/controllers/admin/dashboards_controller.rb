class Admin::DashboardsController < ApplicationController
	before_action :authenticate_admin!
	layout 'admin'

	def index
		@admins = Admin.all
		@customers = Customer.all
	end

	def show
		@admin = Admin.find(params[:id])
	end

	def destroy
	  @admin = Admin.find(params[:id])
	  @admin.destroy
	 
	  redirect_to admin_dashboards_path
	end
end
