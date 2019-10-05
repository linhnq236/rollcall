class AddPictureToPlace < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :picture, :string
  end
end
