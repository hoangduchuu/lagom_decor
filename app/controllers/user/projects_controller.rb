class User::ProjectsController < ApplicationController
	layout 'user'

	def index
		@contact = Contact.all
		@projects = Project.all
	end

	def show
		@contact = Contact.all
		@project = Project.find(params[:id])
	end
end
