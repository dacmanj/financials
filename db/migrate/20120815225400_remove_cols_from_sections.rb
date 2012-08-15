class RemoveColsFromSections < ActiveRecord::Migration
  def up
    remove_column :sections, :type
    remove_column :sections, :order
    remove_column :sections, :financial_statement_id
  end

  def down
    add_column :sections, :financial_statement_id, :integer
    add_column :sections, :order, :integer
    add_column :sections, :type, :string
  end
end
