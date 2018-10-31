class Admin::CustomersController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@customers = Customer.all.order(id: :desc)
	end

	def show
		@customer = Customer.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end

	def destroy
		@customer = Customer.find(params[:id])
		@customer.destroy

		redirect_to admin_customers_path
	end

	def update
		@customer = Customer.find(params[:id])
		@customer.update(status: params[:status])
		redirect_to action: "index"
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
