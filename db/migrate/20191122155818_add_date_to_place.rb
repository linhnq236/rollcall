class AddDateToPlace < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :date, :date
  end
end
