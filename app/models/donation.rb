class Donation < ActiveRecord::Base
  belongs_to :contact

  #def total_donations
  #	total_donations = Donation.sum('amount')
  #end	

end
