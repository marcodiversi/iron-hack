require("imdb")

i = Imdb::Search.new("Star Trek")
p i.movies.entries
