class Movie < ApplicationRecord
  validates :name, presence: true, uniqueness:true
  has_many :theatres, :through => :theatre_movies
  has_many :theatre_movies, :dependent => :destroy

  def self.search(search)

       where("name LIKE :search OR actorname LIKE :search OR directorname LIKE :search OR language LIKE :search OR showtime LIKE :search", search: "%#{search}%")  
  end

end
