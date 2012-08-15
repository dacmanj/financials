class RemoveSideFromAccounts < ActiveRecord::Migration
  def up
    remove_column :accounts, :side
  end

  def down
    add_column :accounts, :side, :integer
  end
end
