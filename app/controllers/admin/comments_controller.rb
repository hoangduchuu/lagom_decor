class Admin::CommentsController < ApplicationController
	layout 'admin'

	def index
		@comments = Comment.all
	end

	def show
		@comment = Comment.find(params[:id])
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(allowed_params)
		if @comment.save
			redirect_to admin_comments_path
		else
			render 'new'
		end
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def update
		@comment = Comment.find(params[:id])
		if @comment.update_attributes(allowed_params)
			redirect_to admin_comments_path
		else
			render 'new'
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to admin_comments_path
	end

	private 
		def allowed_params
			params.require(:comment).permit(:title, :comment)
	end
end