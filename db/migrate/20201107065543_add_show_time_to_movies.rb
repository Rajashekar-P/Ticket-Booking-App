class AddShowTimeToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :showtime, :datetime
  end
end
