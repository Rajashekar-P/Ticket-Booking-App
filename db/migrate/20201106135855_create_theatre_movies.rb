class CreateTheatreMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :theatre_movies do |t|
      t.references :theatre, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
