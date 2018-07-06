class Admin::ConsultingsController < ApplicationController

	def index
		@faq = Faq.all
	end

	def show
		@faq = Faq.find(params[:id])
	end

	def new
		@faq = Faq.new
	end

	def create
		@faq = Faq.new(allowed_params)
		if @faq.save
			redirect_to admin_consultings_faqs_path
		else
			render 'new'
		end
	end

	def edit
		@faq = Faq.find(params[:id])
	end

	def update
		@faq = Faq.find(params[:id])
		if @faq.update_attributes(allowed_params)
			redirect_to admin_faqs_path
		else
			render 'new'
		end
	end

	def destroy
		@faq = Faq.find(params[:id])
		@faq.destroy
		redirect_to admin_faqs_path
	end

	private 
		def allowed_params
			params.require(:faq).permit(:title, :text)
	end
end
