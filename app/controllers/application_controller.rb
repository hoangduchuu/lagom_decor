class ApplicationController < ActionController::Base
  
	def index
		@interiorideas = Interiorideas.all
	end

end
