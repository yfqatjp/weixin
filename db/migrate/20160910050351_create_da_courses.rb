class CreateDaCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :da_courses do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.text :imageurl

      t.timestamps
    end
  end
end
