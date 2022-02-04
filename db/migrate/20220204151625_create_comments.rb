class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :body, null: false, limit: 140
      t.references :commentable, polymorphic: true

      t.timestamps
    end
  end
end
