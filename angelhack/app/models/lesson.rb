class Lesson < ActiveRecord::Base
  has_many :concepts
  belongs_to :teacher
  # accepts_nested_attributes_for :concepts
end
