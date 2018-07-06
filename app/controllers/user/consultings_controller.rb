class User::ConsultingsController < ApplicationController

	def index
		@faq = Faq.all
	end
end
