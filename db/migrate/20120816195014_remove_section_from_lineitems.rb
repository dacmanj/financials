class RemoveSectionFromLineitems < ActiveRecord::Migration
  def up
    remove_column :lineitems, :section
  end

  def down
    add_column :lineitems, :section, :integer
  end
end
