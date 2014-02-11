class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :contacts
has_many :interactions
has_many :donations, through: :contacts

	def interactions_for(contact)	
		interactions.where(contact: contact)
	end     
end
