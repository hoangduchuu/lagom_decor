class User::ContactsController < ApplicationController
	layout 'user'

	def index
		@contact = Contact.all
	end
end
