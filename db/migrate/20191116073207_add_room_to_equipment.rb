class AddRoomToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_reference :equipment, :room, null: false, foreign_key: true
  end
end
