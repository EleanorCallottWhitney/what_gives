class HomeController < ApplicationController

before_filter :authenticate_user!

		#if user_signed_in?
		#redirect_to "/users"

	def index

	end	

end	