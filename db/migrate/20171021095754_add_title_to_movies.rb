class AddTitleToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :title, :string
  end
end
