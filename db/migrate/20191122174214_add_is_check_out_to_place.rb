class AddIsCheckOutToPlace < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :is_check_out, :boolean
  end
end
