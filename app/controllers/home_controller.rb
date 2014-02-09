class HomeController < ApplicationController

before_filter :authenticate_user!, :except=> :about

		#if user_signed_in?
		#redirect_to "/users"

	def index
	end	

	def about
	end

end	