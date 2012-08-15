class AddFinancialStatementIdToLineitems < ActiveRecord::Migration
  def change
    add_column :lineitems, :financial_statement_id, :integer
  end
end
