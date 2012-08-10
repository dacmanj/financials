class RemoveIdentifierUrlFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :identifier_url
  end

  def down
    add_column :users, :identifier_url, :string
  end
end
