class User < ApplicationRecord
  has_many :user_courses
  has_many :courses, :through => :user_courses
  has_many :da_courses, :through => :user_courses
  has_many :xiao_courses, :through => :user_courses

  after_initialize :init

  def init
    self.buytime  ||= 20.0
    self.playtime  ||= 0.0
    self.expiredate ||= Date.today + 365.days
  end

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                        format: { with: VALID_EMAIL_REGEX },
                        uniqueness: { case_sensitive: false }
  # has_secure_password
  validates :password_digest, length: { minimum: 6 }
end
