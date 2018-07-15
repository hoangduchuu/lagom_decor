class User::ProjectsController < ApplicationController
	layout 'user'

	def index
		@contact = Contact.all
		@projects = Project.all
	end
end
