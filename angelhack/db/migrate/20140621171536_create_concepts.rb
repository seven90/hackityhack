class CreateConcepts < ActiveRecord::Migration
  def change
    create_table :concepts do |t|
      
    t.integer :lesson_id
    t.text :bullet
    t.integer :counter

    t.timestamps
    end
  end
end
