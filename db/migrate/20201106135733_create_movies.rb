class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :industry
      t.string :actorname
      t.string :directorname
      t.string :language
      t.datetime :showtime

      t.timestamps
    end
  end
end
