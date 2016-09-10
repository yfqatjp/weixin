class AddDaCourseToCourse < ActiveRecord::Migration[5.0]
  def change
    add_reference :courses, :da_course, foreign_key: true
  end
end
