class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :author
      t.string :body
      t.references :member
      t.timestamps null: false
    end
  end
end
