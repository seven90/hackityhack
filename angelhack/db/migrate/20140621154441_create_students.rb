class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|

    t.string :first_name
    t.string :last_name
    t.string :email
    t.string :password_digest 
    t.string :period_1
    t.string :period_2
    t.string :period_3
    t.string :period_4
    t.string :period_5
    t.string :afterschool

    t.timestamps
    end
  end
end
