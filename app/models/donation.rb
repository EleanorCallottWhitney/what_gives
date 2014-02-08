class Donation < ActiveRecord::Base
  belongs_to :contact

  def self.total_donations
    Donation.sum(:amount)
  end
  


  # 	sum = 0
  	
  # 	all.each do |n|
  # 		sum += n.amount.to_f
  # 	end
	
		# sum   			
end 