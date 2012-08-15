class AddUserIdToLineitems < ActiveRecord::Migration
  def change
    add_column :lineitems, :user_id, :integer
  end
end
