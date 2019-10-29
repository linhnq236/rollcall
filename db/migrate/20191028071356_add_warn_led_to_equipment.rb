class AddWarnLedToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :warn_led, :integer
  end
end
