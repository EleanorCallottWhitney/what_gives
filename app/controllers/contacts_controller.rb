class ContactsController < ApplicationController

	def index
		@contacts = Contact.all
	end

	def show
		@contact = Contact.find(params[:id])
		@interaction = Interaction.new
	end

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.create(contact_params)
  	if @contact.save
  		redirect_to "/contacts/#{@contact.id}"
  	else
  		flash[:error] = "Sorry! Error in creating your contact."
  		redirect_to new_contact_path	
  	end		
	end

	def edit
		@contact = Contact.find(params[:id])
	end

	def update
		@contact = Contact.find(params[:id])
  	@contact.update_attributes(contact_params)
  	redirect_to "/contacts/#{@contact.id}"
	end

	def destroy
		@contact = Contact.find(params[:id])
  	@contact.destroy
  	redirect_to "/contacts"
	end

private
	def contact_params
		params.require(:contact).permit(:first_name, :last_name, :company, :email, :address, :linked_in, :bio)
  end
end  	