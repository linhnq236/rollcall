class AddStartTimeToTimetable < ActiveRecord::Migration[6.0]
  def change
    add_column :timetables, :start_time, :datetime
  end
end
