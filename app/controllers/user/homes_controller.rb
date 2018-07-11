class User::HomesController < ApplicationController
	layout 'user'

	def index
		@contact = Contact.all
		@comments = Comment.all
	end
end
