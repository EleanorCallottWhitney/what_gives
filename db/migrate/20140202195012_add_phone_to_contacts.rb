class AddPhoneToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :phone_number, :integer
  end
end
