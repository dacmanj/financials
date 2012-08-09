class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.string :account
      t.decimal :amount
      t.string :section
      t.integer :order

      t.timestamps
    end
  end
end
