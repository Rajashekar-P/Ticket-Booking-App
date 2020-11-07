class Theatre < ApplicationRecord
  has_many :movies, :through => :theatre_movies
  has_many :theatre_movies, :dependent => :destroy
end
