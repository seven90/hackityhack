class Teacher < ActiveRecord::Base
  has_secure_password
  has_many :lessons
  has_many :students
end
