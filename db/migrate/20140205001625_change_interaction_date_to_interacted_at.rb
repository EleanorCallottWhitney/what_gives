class ChangeInteractionDateToInteractedAt < ActiveRecord::Migration
  def change
  	rename_column  :interactions, :date, :interacted_at
  	change_column :interactions, :interacted_at, :datetime
  end
end
