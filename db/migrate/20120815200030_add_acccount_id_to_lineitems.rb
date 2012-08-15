class AddAcccountIdToLineitems < ActiveRecord::Migration
  def change
    add_column :lineitems, :account_id, :integer
  end
end
