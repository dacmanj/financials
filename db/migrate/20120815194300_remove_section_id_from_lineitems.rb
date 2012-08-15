class RemoveSectionIdFromLineitems < ActiveRecord::Migration
  def up
    remove_column :lineitems, :section_id
  end

  def down
    add_column :lineitems, :section_id, :integer
  end
end
