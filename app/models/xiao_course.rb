class XiaoCourse < ApplicationRecord
  has_many :user_courses
  has_many :users, :through => :user_courses
  has_many :courses
  belongs_to :da_course

  def name
    content
  end

end
