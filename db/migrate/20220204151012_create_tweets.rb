class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.text :body, null: false, limit: 140
      t.integer :comments_count, default: 0

      t.timestamps
    end
  end
end
