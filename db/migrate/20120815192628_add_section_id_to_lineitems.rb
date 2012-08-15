class AddSectionIdToLineitems < ActiveRecord::Migration
  def change
    add_column :lineitems, :section_id, :integer
  end
end
