json.extract! movie, :id, :name, :industry, :actorname, :directorname, :language, :showtime, :created_at, :updated_at
json.url movie_url(movie, format: :json)
