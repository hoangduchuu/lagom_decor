class User::ContactsController < User::BaseUserController
	layout 'user'

	def index
		@contact = Contact.all
	end
end
