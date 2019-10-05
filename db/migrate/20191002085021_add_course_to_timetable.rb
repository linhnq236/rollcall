class AddCourseToTimetable < ActiveRecord::Migration[6.0]
  def change
    add_reference :timetables, :course, null: false, foreign_key: true
  end
end
