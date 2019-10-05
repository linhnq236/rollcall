class AddUserToUsercourse < ActiveRecord::Migration[6.0]
  def change
    add_reference :usercourses, :user, null: false, foreign_key: true
  end
end
