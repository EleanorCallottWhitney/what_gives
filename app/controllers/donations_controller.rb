class DonationsController < ApplicationController


 def create
		@contact = Contact.find(params[:contact_id])
		@donation = Donation.create(donation_params)
		@contact.donations << @donation 
		redirect_to contact_path @contact, notice: 'New donation!'
	end	

  def destroy
    donation = Donation.find(params[:id])
    donation.destroy
    contact_id = params[:contact_id].to_i
    redirect_to "/contacts/#{contact_id}"
  end	

private
	def donation_params
		params.require(:donation).permit(:date, :amount, :contact_id)
  end
end