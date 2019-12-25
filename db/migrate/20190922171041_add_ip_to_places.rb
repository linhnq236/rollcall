class AddIpToPlaces < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :ip, :string
  end
end
