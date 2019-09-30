class AddDateToCourse < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :date, :string
  end
end
