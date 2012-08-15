class AddSectionIdToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :section_id, :integer
  end
end
