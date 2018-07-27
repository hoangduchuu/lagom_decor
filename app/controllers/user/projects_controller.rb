class User::ProjectsController < ApplicationController
	layout 'user'

	def index
		@contact = Contact.all
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end
end
