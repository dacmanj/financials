class AddSideToSections < ActiveRecord::Migration
  def change
    add_column :sections, :side, :integer
  end
end
