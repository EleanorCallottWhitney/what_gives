class Contact < ActiveRecord::Base
	validates :first_name, :last_name, presence: true
	belongs_to :user
	has_many :interactions
	has_many :donations

	def self.search_for(query)
 		Contact.where("first_name LIKE?" OR "last_name LIKE?", "%#{query}%")
	end
end
