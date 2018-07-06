class User::ConsultingsController < ApplicationController
	layout 'user'

	def index
		@consulting = Consulting.all
	end
end
