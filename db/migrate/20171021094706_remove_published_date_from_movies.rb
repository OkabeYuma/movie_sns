class RemovePublishedDateFromMovies < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :published_date, :string
  end
end
