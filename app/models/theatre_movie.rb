class TheatreMovie < ApplicationRecord
  validates_uniqueness_of :movie_id, :scope => [:theatre_id]
  belongs_to :theatre
  belongs_to :movie
end
