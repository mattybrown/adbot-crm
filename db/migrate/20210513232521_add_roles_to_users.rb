class AddRolesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :superadmin_role, :boolean, default: false
    add_column :users, :manager_role, :boolean, default: false
    add_column :users, :sales_role, :boolean, default: true
    add_column :users, :production_role, :boolean, default: false
  end
end
