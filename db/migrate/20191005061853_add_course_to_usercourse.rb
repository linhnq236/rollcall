class AddCourseToUsercourse < ActiveRecord::Migration[6.0]
  def change
    add_reference :usercourses, :course, null: false, foreign_key: true
  end
end
