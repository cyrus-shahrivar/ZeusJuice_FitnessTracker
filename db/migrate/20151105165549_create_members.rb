class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :username
      t.string :password_digest
      t.integer :journal_num_entries
      t.integer :calorie_intake
      t.integer :minutes_exercised
      t.integer :steps
      t.integer :miles
      t.integer :calories_burned
      t.integer :weight
      t.integer :sleep
      t.integer :blood_sugar
      t.timestamps null: false
    end
  end
end
