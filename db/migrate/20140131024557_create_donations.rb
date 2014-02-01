class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.references :contact, index: true
      t.decimal :amount
      t.date :date

      t.timestamps
    end
  end
end
