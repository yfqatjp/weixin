class Course < ApplicationRecord
  has_many :user_courses
  has_many :users, :through => :user_courses
  belongs_to :xiao_course
  belongs_to :da_course


end
