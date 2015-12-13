class AddFieldsToMembers < ActiveRecord::Migration
  def change
    add_column :members, :calorie_intake_goal, :string
    add_column :members, :minutes_exercised_goal, :string
    add_column :members, :steps_goal, :string
    add_column :members, :miles_goal, :string
    add_column :members, :calories_burned_goal, :string
    add_column :members, :weight_goal, :string
    add_column :members, :sleep_goal, :string
    add_column :members, :blood_sugar_goal, :string
  end
end
