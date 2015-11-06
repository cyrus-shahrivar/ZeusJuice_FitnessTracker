class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :username
      t.string :password_digest
      t.integer :journal_num_entries
      t.integer :calorie_intake
      t.integer :minutes_exercised
      t.timestamps null: false
    end
  end
end
