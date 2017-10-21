class RemoveTitleFromMovies < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :title, :string
  end
end
