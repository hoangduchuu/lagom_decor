class User::InteriorideasController < ApplicationController

	def index
		@interioridea = Interioridea.all
	end
end
