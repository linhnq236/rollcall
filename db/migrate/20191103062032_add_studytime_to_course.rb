class AddStudytimeToCourse < ActiveRecord::Migration[6.0]
  def change
    add_reference :courses, :studytime, null: false, foreign_key: true
  end
end
