class AddIsCheckInToPlace < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :is_check_in, :boolean
  end
end
