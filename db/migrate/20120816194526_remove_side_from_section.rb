class RemoveSideFromSection < ActiveRecord::Migration
  def up
    remove_column :sections, :side
  end

  def down
    add_column :sections, :side, :integer
  end
end
