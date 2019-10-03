class AddRoomToTimetable < ActiveRecord::Migration[6.0]
  def change
    add_reference :timetables, :room, null: false, foreign_key: true
  end
end
