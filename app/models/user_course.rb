class UserCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course
  belongs_to :da_course
  belongs_to :xiao_course

end
