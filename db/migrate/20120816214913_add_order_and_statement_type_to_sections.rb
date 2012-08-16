class AddOrderAndStatementTypeToSections < ActiveRecord::Migration
  def change
    add_column :sections, :order, :integer
    add_column :sections, :statement_type, :integer
  end
end
