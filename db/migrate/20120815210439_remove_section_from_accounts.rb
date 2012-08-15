class RemoveSectionFromAccounts < ActiveRecord::Migration
  def up
    remove_column :accounts, :section
  end

  def down
    add_column :accounts, :section, :string
  end
end
