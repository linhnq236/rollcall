class Course < ApplicationRecord
  belongs_to :teacher
  has_many :usercourses
  has_many :timetables
end
