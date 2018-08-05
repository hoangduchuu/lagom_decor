class Admin::CommentsController < ApplicationController
	before_action :authenticate_admin!, :set_locale
	layout 'admin'

	def index
		@comments = Comment.all
		@customers = Customer.all.order(id: :desc)
	end

	def show
		@comment = Comment.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end

	def new
		@comment = Comment.new
		@customers = Customer.all.order(id: :desc)
	end

	def create
		@comment = Comment.new(allowed_params)
		if @comment.save
			redirect_to admin_homes_path
		else
			render 'new'
		end
	end

	def edit
		@comment = Comment.find(params[:id])
		@customers = Customer.all.order(id: :desc)
	end

	def update
		@comment = Comment.find(params[:id])
		if @comment.update_attributes(allowed_params)
			redirect_to admin_homes_path
		else
			render 'new'
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to admin_homes_path
	end

	private 
		def allowed_params
			params.require(:comment).permit(:title, :comment)
	end

	private
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
	end

	def default_url_options(options = {})
		{ locale: I18n.locale}.merge options
	end
end
