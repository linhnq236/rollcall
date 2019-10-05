class AddTimeToCourse < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :time, :string
  end
end
