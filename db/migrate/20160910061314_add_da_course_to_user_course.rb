class AddDaCourseToUserCourse < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_courses, :da_course, foreign_key: true
  end
end
