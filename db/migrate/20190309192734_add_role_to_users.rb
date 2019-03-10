class AddRoleToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :role, :integer, default: 0
  end

  def down
    remove_column :users, :role, :integer, default: 0
  end
end
