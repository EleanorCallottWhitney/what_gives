class Contact < ActiveRecord::Base
	validates :first_name, :last_name, presence: true
	belongs_to :user
	has_many :interactions
end
