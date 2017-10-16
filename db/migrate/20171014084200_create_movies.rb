class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :movie_thumbnail_id
      t.string :summary
      t.string :published_date

      t.timestamps
    end
  end
end
