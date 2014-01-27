class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.integer :month
      t.integer :day
      t.integer :year
      t.text :notes
      t.references :contact, index: true

      t.timestamps
    end
  end
end
