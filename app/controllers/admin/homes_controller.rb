class Admin::HomesController < ApplicationController
	layout 'admin'

	def index
		@comments = Comment.all
	end
end
