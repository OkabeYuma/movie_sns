class RemoveSummaryFromMovies < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :summary, :string
  end
end
