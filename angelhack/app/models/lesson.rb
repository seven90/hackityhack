class Lesson < ActiveRecord::Base
  has_many :concepts
  belongs_to :teacher
end
