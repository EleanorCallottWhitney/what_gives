class InteractionsController < ApplicationController
  
 def create
		@contact = Contact.find(params[:contact_id])
		@interaction = Interaction.create(interaction_params)
		@contact.interactions << @interaction 
		redirect_to contact_path @contact, notice: 'New interaction!'
	end	

  def destroy
    interaction = Interaction.find(params[:id])
    interaction.destroy
    contact_id = params[:contact_id].to_i
    redirect_to "/contacts/#{contact_id}"
  end	

private
	def interaction_params
		params.require(:interaction).permit(:interacted_at, :note, :contact_id)
  end
end
