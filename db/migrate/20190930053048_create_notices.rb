class CreateNotices < ActiveRecord::Migration[6.0]
  def change
    create_table :notices do |t|
      t.string :notice_name
      t.string :content
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
