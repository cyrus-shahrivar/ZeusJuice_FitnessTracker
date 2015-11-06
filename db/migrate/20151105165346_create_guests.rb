class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :username
      t.timestamps null: false
    end
  end
end
