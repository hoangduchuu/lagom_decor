class User::InteriorideasController < ApplicationController
	layout 'user'

	def index
		@interioridea = Interioridea.all
	end
end
