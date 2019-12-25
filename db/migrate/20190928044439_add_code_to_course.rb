class AddCodeToCourse < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :code, :string
  end
end
