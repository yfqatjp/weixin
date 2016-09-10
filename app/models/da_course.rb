class DaCourse < ApplicationRecord
  has_many :user_courses
  has_many :users, :through => :user_courses
  has_many :xiao_courses
  has_many :courses

  def name
    content
  end

end
