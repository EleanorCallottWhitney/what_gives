class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.text :address
      t.string :linked_in
      t.text :bio

      t.timestamps
    end
  end
end
