class User::ProjectsController < ApplicationController
	layout 'user'

	def index
		@projects = Project.all
	end
end
