class RemoveAcccountFromLineitems < ActiveRecord::Migration
  def up
    remove_column :lineitems, :account
  end

  def down
    add_column :lineitems, :account, :string
  end
end
