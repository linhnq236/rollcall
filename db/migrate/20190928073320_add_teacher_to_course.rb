class AddTeacherToCourse < ActiveRecord::Migration[6.0]
  def change
    add_reference :courses, :teacher, null: false, foreign_key: true
  end
end
