class Admin::HomesController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@comments = Comment.all
		@services = Service.all
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
