class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :user_id
      t.integer :movie_id
      t.string :viewday
      t.string :media

      t.timestamps
    end
    add_index :reviews, [:user_id, :created_at]
  end
end
