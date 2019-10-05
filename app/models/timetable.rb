class Timetable < ApplicationRecord
  belongs_to :room
  belongs_to :course
end
