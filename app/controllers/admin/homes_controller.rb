class Admin::HomesController < ApplicationController
	before_action :authenticate_admin!
	layout 'admin'

	def index
		@comments = Comment.all
	end
end
