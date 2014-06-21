class Addtolessons < ActiveRecord::Migration
  def change
change_table :lessons do |t|
      t.integer :teacher_id
      t.date :date
      t.string :topic
    end
  end
end
