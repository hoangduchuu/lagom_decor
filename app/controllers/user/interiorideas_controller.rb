class User::InteriorideasController < ApplicationController
	layout 'user'

	def index
		@contact = Contact.all
		@interiorideas = Interioridea.all
	end
end
