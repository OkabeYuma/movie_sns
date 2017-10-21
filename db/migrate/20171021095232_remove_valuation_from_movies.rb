class RemoveValuationFromMovies < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :valuation, :string
  end
end
