class InteractionController < ApplicationController
  #def index
  	#@interaction = @contact.interaction.new(interaction_params)
  #end

  def create
		@contact = Contact.find(params[:contact_id])
		@interaction = Interaction.create(interaction_params)
		@contact.interactions << @interaction 
		redirect_to contact_path @contact, notice: 'New interaction!'
	end	

  def show
  end

  def edit
  end

private
	def interaction_params
		params.require(:interaction).permit(:month, :day, :year, :notes, :contact_id)
  end
end
