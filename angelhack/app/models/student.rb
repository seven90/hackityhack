class Student < ActiveRecord::Base
  has_secure_password
  belongs_to :teacher
end
