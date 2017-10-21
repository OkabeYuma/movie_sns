class AddVoteAverageToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :vote_average, :string
  end
end
