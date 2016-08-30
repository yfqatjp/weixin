class AddBuytimeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :buytime, :integer
  end
end
