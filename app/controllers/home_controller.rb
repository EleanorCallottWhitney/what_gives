class HomeController < ApplicationController

before_filter :authenticate_user!, :except=> :about

		#if user_signed_in?
		#redirect_to "/users"

	def index
    @tags = Contact.tag_counts_on(:tags)
	end	

	def about
	end

end	
