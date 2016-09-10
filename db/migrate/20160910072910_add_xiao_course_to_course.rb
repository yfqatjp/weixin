class AddXiaoCourseToCourse < ActiveRecord::Migration[5.0]
  def change
    add_reference :courses, :xiao_course, foreign_key: true
  end
end
