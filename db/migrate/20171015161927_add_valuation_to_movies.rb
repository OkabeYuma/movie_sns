class AddValuationToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :valuation, :real
  end
end
