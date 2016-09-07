class AddLogoutToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :logout, :boolean
  end
end
