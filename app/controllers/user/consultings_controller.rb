class User::ConsultingsController < ApplicationController

	def index
		@consulting = Consulting.all
	end
end
