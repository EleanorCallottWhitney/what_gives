class Donation < ActiveRecord::Base
  belongs_to :contact

  def self.total_donations
  	sum = 0
  	
  	all.each do |donation|
  		sum = sum + donation.amount.to_f
  	end
	
		sum   		
  end	

end
