class AddExpireDateToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :expiredate, :date
  end
end
