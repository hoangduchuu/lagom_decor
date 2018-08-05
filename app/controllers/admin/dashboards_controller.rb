class Admin::DashboardsController < ApplicationController
	before_action :authenticate_admin!, :set_locale

	layout 'admin'

	def index
		@admins = Admin.all
		@customers = Customer.all.order(id: :desc)
	end

	def show
		@admin = Admin.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end

	def destroy
		@admin = Admin.find(params[:id])
		@admin.destroy
		
		redirect_to admin_dashboards_path
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
