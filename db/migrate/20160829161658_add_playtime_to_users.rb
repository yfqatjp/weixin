class AddPlaytimeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :playtime, :integer
  end
end
