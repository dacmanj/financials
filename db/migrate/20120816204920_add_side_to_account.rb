class AddSideToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :side, :integer
  end
end
