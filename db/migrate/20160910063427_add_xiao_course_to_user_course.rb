class AddXiaoCourseToUserCourse < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_courses, :xiao_course, foreign_key: true
  end
end
