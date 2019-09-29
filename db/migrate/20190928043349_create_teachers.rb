class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :teacher_code
      t.string :teacher_name

      t.timestamps
    end
  end
end
