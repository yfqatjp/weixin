class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.text :imageurl
      t.text :videourl
      t.text :teacher
      t.text :courseinfo
      t.text :date
      t.text :other

      t.timestamps
    end
  end
end

