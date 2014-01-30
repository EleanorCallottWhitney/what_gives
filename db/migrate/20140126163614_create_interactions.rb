class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.date :date
      t.text :note
      t.references :contact, index: true
      t.timestamps
    end
  end
end
