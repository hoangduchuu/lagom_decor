class User::VideosController < ApplicationController
	before_action :set_locale
	layout 'user'

	def show
		@contact = Contact.all
		@video = Video.find(params[:id])
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
