class Admin::CustomersController < ApplicationController
	before_action :authenticate_admin!, :set_locale

	def index
		@customers = Customer.all
	end

	def show
		@customer = Customer.find(params[:id])
	end

	def destroy
		@customer = Customer.find(params[:id])
		@customer.destroy

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
