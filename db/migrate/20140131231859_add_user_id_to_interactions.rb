class AddUserIdToInteractions < ActiveRecord::Migration
  def change
  	add_column(:interactions, :user_id, :integer)
  end
end
