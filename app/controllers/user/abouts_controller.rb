class User::AboutsController < ApplicationController
	before_action :set_locale
	layout 'user'

	def index
		@contact = Contact.all
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
