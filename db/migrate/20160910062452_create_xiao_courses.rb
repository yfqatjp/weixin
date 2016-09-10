class CreateXiaoCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :xiao_courses do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.references :da_course, foreign_key: true
      t.text :imageurl

      t.timestamps
    end
  end
end
