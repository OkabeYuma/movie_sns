class RemoveMovieThumbnailIdFromMovies < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :movie_thumbnail_id, :string
  end
end
