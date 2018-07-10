class User::HomesController < ApplicationController
	layout 'user'

	def index
		@comments = Comment.all
	end
end
