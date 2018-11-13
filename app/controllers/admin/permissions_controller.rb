class Admin::PermissionsController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@permissions = Permission.all
		@customers = Customer.all.order(id: :desc)
	end

	def show
		@permission = Permission.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end

	def new
		@permission = Permission.new
		respond_to do |format|
			format.js
		end
	end

	def create
		@permission = Permission.new(allowed_params)
		if @permission.save
			redirect_to admin_dashboards_path
		else
			redirect_to admin_dashboards_path
		end
	end

	def edit
		@permission = Permission.find(params[:id])
		respond_to do |format|
			format.js
		end
	end

	def update
		@permission = Permission.find(params[:id])
		if @permission.update_attributes(allowed_params)
			redirect_to admin_dashboards_path
		else
			redirect_to admin_dashboards_path
		end
	end

	def destroy
		@permission = Permission.find(params[:id])
		@permission.destroy
		redirect_to admin_dashboards_path
	end

	private 
	def allowed_params
		params.require(:permission).permit(:admin_id, :status)
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
