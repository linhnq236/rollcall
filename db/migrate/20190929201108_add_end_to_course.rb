class AddEndToCourse < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :end, :date
  end
end
