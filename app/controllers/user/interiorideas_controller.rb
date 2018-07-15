class User::InteriorideasController < ApplicationController
	layout 'user'

	def index
		@interiorideas = Interioridea.all
	end
end
