class Contact < ActiveRecord::Base
	validates :first_name, :last_name, presence: true
	belongs_to :user
	has_many :interactions
	has_many :donations
	#acts_as_taggable # Alias for acts_as_taggable_on :tags
  #acts_as_taggable_on :tags

	def self.search_for(query)
 		Contact.where("first_name LIKE :query OR last_name LIKE :query OR company LIKE :query", query: "%#{query}%")
	end

	def total_donations
		donations.sum(:amount)
	end	

	def high_roller?
		total_donations > 500 
	end	
end
