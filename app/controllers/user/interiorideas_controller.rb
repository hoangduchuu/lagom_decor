class User::InteriorideasController < ApplicationController
	layout 'user'

	def index
		@contact = Contact.all
		@interiorideas = Interioridea.all
	end

	def show
		@contact = Contact.all
		@interioridea = Interioridea.find(params[:id])
	end
end
