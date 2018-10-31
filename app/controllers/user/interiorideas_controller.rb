class User::InteriorideasController < ApplicationController
	before_action :set_locale
	layout 'user'

	def index
		@contact = Contact.all
		@interiorideas = Interioridea.all
		@interiorideas1 = Interioridea.all.order("created_at DESC").paginate(page: params[:page], per_page: 3)
		@banners = Banner.all
	end

	def show
		@contact = Contact.all
		@interioridea = Interioridea.find(params[:id])
		@banners = Banner.all
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
