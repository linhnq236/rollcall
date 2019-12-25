class AddEndTimeToTimetable < ActiveRecord::Migration[6.0]
  def change
    add_column :timetables, :end_time, :datetime
  end
end
