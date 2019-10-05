class CreateUsercourses < ActiveRecord::Migration[6.0]
  def change
    create_table :usercourses do |t|
  
      t.timestamps
    end
  end
end
