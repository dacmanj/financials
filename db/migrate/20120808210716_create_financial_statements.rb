class CreateFinancialStatements < ActiveRecord::Migration
  def change
    create_table :financial_statements do |t|
      t.string :title
      t.date :statement_date
      t.string :chapter

      t.timestamps
    end
  end
end
