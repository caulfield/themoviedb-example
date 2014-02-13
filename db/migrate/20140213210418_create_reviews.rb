class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :movie_id, null: false

      t.timestamps
    end
    add_index :reviews, :movie_id
  end
end
