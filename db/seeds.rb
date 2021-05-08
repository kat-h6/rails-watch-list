# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'json'
require 'open-uri'

url = 'http://tmdb.lewagon.com/movie/top_rated'
serialized_movies = URI.open(url).read
movie = JSON.parse(serialized_movies)
movie['results'].each do |movie|
  Movie.create(
    title: movie['original_title'],
    overview: movie['overview'],
    poster_url: movie['poster_path'],
    rating: movie['vote_average']
  )
end
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
