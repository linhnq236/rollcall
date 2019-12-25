class AddStatusToPlace < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :status, :boolean
  end
end
