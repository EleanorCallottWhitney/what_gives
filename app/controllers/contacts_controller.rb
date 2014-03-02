class ContactsController < ApplicationController
  
  def index
  	@contacts = current_user.contacts.search_for(params[:query])
  	#if params[:tag]
   		#@contacts = current_user.contacts.tagged_with(params[:tag])
  	#else
    #	@contacts = current_user.contacts.search_for(params[:query])
    #end	
  	#@contacts = Contact.contacts.search_for(params[:query])
  	#@contacts = Contact.all
  	#@contacts = Contact.where("first_name OR last_name LIKE?", "%#{params[:query]}%")
  end
  
  #def search
  	#@contacts = Contact.where("first_name OR last_name LIKE?", "%#{params[:query]}%")
  #end
  	
  def show
  	@contact = current_user.contacts.find(params[:id])
  	@interaction = Interaction.new
  	@donation = Donation.new
  	#@high_roller = Donation.high_roller
  end
  
  def new
  	@contact = Contact.new
  end
  
  def create
    @contact = current_user.contacts.new(contact_params)
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
    if @contact.update_attributes(contact_params)
      redirect_to contact_path(params[:id])
    else
  		flash[:error] = "Sorry! Error in creating your contact."
      render :edit
    end
  end
  
  def destroy
  	@contact = Contact.find(params[:id])
  	@contact.destroy
  	redirect_to "/contacts"
  end
  
  ivate
  def contact_params
  	params.require(:contact).permit(:first_name, :last_name, :company, :email, :address, :linked_in, :bio, :phone_number, :tag_list)
  end
end  	
