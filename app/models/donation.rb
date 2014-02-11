class Donation < ActiveRecord::Base
  belongs_to :contact

  def self.total_donations
    sum(:amount)
  end

end 