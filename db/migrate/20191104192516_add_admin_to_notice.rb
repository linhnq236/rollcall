class AddAdminToNotice < ActiveRecord::Migration[6.0]
  def change
    add_column :notices, :admin, :integer
  end
end
