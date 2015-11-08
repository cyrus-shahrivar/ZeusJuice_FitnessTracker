class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.text :entry
      t.references :member
      t.timestamps null: false
    end
  end
end
